message("\n----- MiniZinc build configuration ----")
if(BUILD_REF)
  set(STR_BUILD_REF "build ${BUILD_REF}")
endif()
message("MiniZinc version: ${libminizinc_VERSION} ${STR_BUILD_REF}")
message("Enabled drivers:")

if(TARGET minizinc_cplex)
  if(CPLEX_PLUGIN)
    set(STR_CPLEX_PLUGIN " PLUGIN")
  endif()
  message("\tCPLEX${STR_CPLEX_PLUGIN}: ${CPLEX_INCLUDE_DIRS}")
endif()
if(TARGET minizinc_gecode)
  message("\tGecode ${GECODE_VERSION}: ${GECODE_INCLUDE_DIRS}")
endif()
if(TARGET minizinc_gurobi)
  if(GUROBI_PLUGIN)
    set(STR_GUROBI_PLUGIN " PLUGIN")
  endif()
  message("\tGurobi${STR_GUROBI_PLUGIN}: ${GUROBI_INCLUDE_DIRS}")
endif()
if(TARGET minizinc_osicbc)
  message("\tOSICBC: ${OSICBC_INCLUDE_DIRS}")
endif()
if(TARGET minizinc_scip)
  message("\tSCIP: ${SCIP_INCLUDE_DIRS}")
endif()
if(TARGET minizinc_xpress)
  message("\tXPress: ${XPRESS_INCLUDE_DIRS}")
endif()
message("---------------------------------------\n")