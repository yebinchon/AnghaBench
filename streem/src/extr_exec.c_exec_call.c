
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int strm_value ;
typedef int strm_string ;
typedef int strm_stream ;
typedef int strm_state ;


 int STRM_NG ;
 int STRM_OK ;
 int ary_get (int *,int ,int,int *,int *) ;
 scalar_t__ strm_array_p (int ) ;
 int strm_funcall (int *,int ,int,int *,int *) ;
 int strm_raise (int *,char*) ;
 int strm_str_value (int ) ;
 int * strm_value_ns (int ) ;
 int strm_var_get (int *,int ,int *) ;

__attribute__((used)) static int
exec_call(strm_stream* strm, strm_state* state, strm_string name, int argc, strm_value* argv, strm_value* ret)
{
  int n = STRM_NG;
  strm_value m;

  if (argc > 0) {
    strm_state* ns = strm_value_ns(argv[0]);
    if (ns) {
      n = strm_var_get(ns, name, &m);
      if (n == STRM_NG) {
        if (argc > 0 && strm_array_p(argv[0])) {
          m = strm_str_value(name);
          n = ary_get(strm, argv[0], 1, &m, ret);
          if (n == STRM_OK && argc == 1) return STRM_OK;
          m = *ret;
        }
      }
    }
  }
  if (n == STRM_NG) {
    n = strm_var_get(state, name, &m);
  }
  if (n == STRM_OK) {
    return strm_funcall(strm, m, argc, argv, ret);
  }
  strm_raise(strm, "function not found");
  return STRM_NG;
}
