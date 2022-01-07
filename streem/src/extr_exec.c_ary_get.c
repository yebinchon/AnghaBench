
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strm_array {size_t len; int * ptr; scalar_t__ headers; } ;
typedef int strm_value ;
typedef int strm_stream ;
typedef size_t strm_int ;


 int STRM_NG ;
 int STRM_OK ;
 int * strm_ary_ptr (scalar_t__) ;
 struct strm_array* strm_ary_struct (int ) ;
 scalar_t__ strm_number_p (int ) ;
 int strm_raise (int *,char*) ;
 scalar_t__ strm_str_eq (int ,int ) ;
 scalar_t__ strm_string_p (int ) ;
 size_t strm_value_int (int ) ;
 int strm_value_str (int ) ;

__attribute__((used)) static int
ary_get(strm_stream* strm, strm_value ary, int argc, strm_value* argv, strm_value* ret)
{
  struct strm_array* a;
  strm_value idx;

  if (argc != 1) {
    strm_raise(strm, "wrong number of arguments");
    return STRM_NG;
  }

  a = strm_ary_struct(ary);
  idx = argv[0];
  if (strm_number_p(idx)) {
    strm_int i = strm_value_int(idx);

    if (i>=a->len)
      return STRM_NG;
    *ret = a->ptr[i];
    return STRM_OK;
  }
  if (strm_string_p(idx)) {
    if (a->headers) {
      strm_int i, len = a->len;

      for (i=0; i<len; i++) {
        if (strm_str_eq(strm_value_str(idx),
                        strm_value_str(strm_ary_ptr(a->headers)[i]))) {
          *ret = a->ptr[i];
          return STRM_OK;
        }
      }
    }
  }
  return STRM_NG;
}
