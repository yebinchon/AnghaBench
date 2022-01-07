
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int strm_value ;
typedef int strm_stream ;
typedef int strm_array ;


 scalar_t__ STRM_NG ;
 int STRM_OK ;
 int flatmap_len (int ) ;
 scalar_t__ flatmap_push (int *,int ,int ,int **) ;
 int strm_ary_new (int *,int ) ;
 int * strm_ary_ptr (int ) ;
 int strm_ary_value (int ) ;
 int strm_get_args (int *,int,int *,char*,int *,int *) ;

__attribute__((used)) static int
ary_flatmap(strm_stream* strm, int argc, strm_value* args, strm_value* ret)
{
  strm_array ary;
  strm_value func;
  strm_array a2;
  strm_value* v2;

  strm_get_args(strm, argc, args, "Av", &ary, &func);
  a2 = strm_ary_new(((void*)0), flatmap_len(ary));
  v2 = strm_ary_ptr(a2);
  if (flatmap_push(strm, ary, func, &v2) == STRM_NG) {
    return STRM_NG;
  }
  *ret = strm_ary_value(a2);
  return STRM_OK;
}
