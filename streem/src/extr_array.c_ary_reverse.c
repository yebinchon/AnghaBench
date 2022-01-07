
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int strm_value ;
typedef int strm_stream ;
typedef int strm_int ;
typedef int strm_array ;


 int STRM_OK ;
 int strm_ary_new (int *,int) ;
 int * strm_ary_ptr (int ) ;
 int strm_ary_value (int ) ;
 int strm_get_args (int *,int,int *,char*,int **,int*) ;

__attribute__((used)) static int
ary_reverse(strm_stream* strm, int argc, strm_value* args, strm_value* ret)
{
  strm_value* v;
  strm_value* v2;
  strm_int len;
  strm_array ary;
  strm_int i;

  strm_get_args(strm, argc, args, "a", &v, &len);
  ary = strm_ary_new(((void*)0), len);
  v2 = strm_ary_ptr(ary);
  for (i=0; i<len; i++) {
    v2[len-i-1] = v[i];
  }
  *ret = strm_ary_value(ary);
  return STRM_OK;
}
