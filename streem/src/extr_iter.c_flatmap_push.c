
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int strm_value ;
typedef int strm_stream ;
typedef size_t strm_int ;
typedef int strm_array ;


 scalar_t__ STRM_NG ;
 int STRM_OK ;
 scalar_t__ strm_array_p (int ) ;
 size_t strm_ary_len (int ) ;
 int * strm_ary_ptr (int ) ;
 scalar_t__ strm_funcall (int *,int ,int,int *,int *) ;

__attribute__((used)) static int
flatmap_push(strm_stream* strm, strm_array ary, strm_value func, strm_value** p)
{
  strm_value* v = strm_ary_ptr(ary);
  strm_int i, len;

  len = strm_ary_len(ary);
  for (i=0; i<len; i++) {
    if (strm_array_p(v[i])) {
      if (flatmap_push(strm, v[i], func, p) == STRM_NG) {
        return STRM_NG;
      }
    }
    else {
      if (strm_funcall(strm, func, 1, &v[i], *p) == STRM_NG) {
        return STRM_NG;
      }
      *p += 1;
    }
  }
  return STRM_OK;
}
