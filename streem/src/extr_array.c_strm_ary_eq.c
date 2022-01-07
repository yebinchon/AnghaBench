
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t strm_int ;
typedef scalar_t__ strm_array ;


 int FALSE ;
 int TRUE ;
 scalar_t__ strm_ary_len (scalar_t__) ;
 int * strm_ary_ptr (scalar_t__) ;
 int strm_value_eq (int ,int ) ;

int
strm_ary_eq(strm_array a, strm_array b)
{
  strm_int i, len;

  if (a == b) return TRUE;
  if (strm_ary_len(a) != strm_ary_len(b)) return FALSE;
  for (i=0, len=strm_ary_len(a); i<len; i++) {
    if (!strm_value_eq(strm_ary_ptr(a)[i], strm_ary_ptr(b)[i])) {
      return FALSE;
    }
  }
  return TRUE;
}
