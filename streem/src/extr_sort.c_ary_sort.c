
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sort_arg {int func; int * strm; } ;
typedef int strm_value ;
typedef int strm_stream ;
typedef int strm_int ;
typedef int strm_array ;


 int STRM_OK ;
 int mem_sort (int *,int ,struct sort_arg*) ;
 int strm_ary_new (int *,int ) ;
 int * strm_ary_ptr (int ) ;
 int strm_ary_value (int ) ;
 int strm_get_args (int *,int,int *,char*,int **,int *,int *) ;

__attribute__((used)) static int
ary_sort(strm_stream* strm, int argc, strm_value* args, strm_value* ret)
{
  strm_array ary;
  strm_value* p;
  strm_int len;
  strm_value func;

  strm_get_args(strm, argc, args, "a|v", &p, &len, &func);

  ary = strm_ary_new(p, len);
  p = strm_ary_ptr(ary);
  if (argc == 1) {
    mem_sort(p, len, ((void*)0));
  }
  else {
    struct sort_arg arg;

    arg.strm = strm;
    arg.func = func;
    mem_sort(p, len, &arg);
  }
  *ret = strm_ary_value(ary);
  return STRM_OK;
}
