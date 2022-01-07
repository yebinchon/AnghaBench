
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int strm_state ;


 int exec_bgraph ;
 int strm_cfunc_value (int ) ;
 int strm_var_def (int *,char*,int ) ;

void
strm_graph_init(strm_state* state)
{
  strm_var_def(state, "graph_bar", strm_cfunc_value(exec_bgraph));
}
