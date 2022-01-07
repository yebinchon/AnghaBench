
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int strm_state ;


 int STRM_IO_READ ;
 int STRM_IO_WRITE ;
 int exec_bar ;
 int exec_eq ;
 int exec_exit ;
 int exec_fread ;
 int exec_fwrite ;
 int exec_match ;
 int exec_neq ;
 int exec_puts ;
 int strm_cfunc_value (int ) ;
 int strm_init (int *) ;
 int strm_io_new (int,int ) ;
 int strm_var_def (int *,char*,int ) ;

__attribute__((used)) static void
node_init(strm_state* state)
{
  strm_init(state);

  strm_var_def(state, "stdin", strm_io_new(0, STRM_IO_READ));
  strm_var_def(state, "stdout", strm_io_new(1, STRM_IO_WRITE));
  strm_var_def(state, "stderr", strm_io_new(2, STRM_IO_WRITE));
  strm_var_def(state, "puts", strm_cfunc_value(exec_puts));
  strm_var_def(state, "print", strm_cfunc_value(exec_puts));
  strm_var_def(state, "==", strm_cfunc_value(exec_eq));
  strm_var_def(state, "!=", strm_cfunc_value(exec_neq));
  strm_var_def(state, "|", strm_cfunc_value(exec_bar));
  strm_var_def(state, "fread", strm_cfunc_value(exec_fread));
  strm_var_def(state, "fwrite", strm_cfunc_value(exec_fwrite));
  strm_var_def(state, "exit", strm_cfunc_value(exec_exit));
  strm_var_def(state, "match", strm_cfunc_value(exec_match));
}
