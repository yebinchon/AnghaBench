
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ strm_string ;


 int FALSE ;
 scalar_t__ STRM_TAG_STRING_F ;
 int TRUE ;
 scalar_t__ memcmp (int ,int ,scalar_t__) ;
 scalar_t__ strm_str_len (scalar_t__) ;
 int strm_str_ptr (scalar_t__) ;
 scalar_t__ strm_value_tag (scalar_t__) ;

int
strm_str_eq(strm_string a, strm_string b)
{
  if (a == b) return TRUE;
  if (strm_value_tag(a) == STRM_TAG_STRING_F &&
      strm_value_tag(b) == STRM_TAG_STRING_F) {

    return FALSE;
  }
  if (strm_str_len(a) != strm_str_len(b)) return FALSE;
  if (memcmp(strm_str_ptr(a), strm_str_ptr(b), strm_str_len(a)) == 0)
    return TRUE;
  return FALSE;
}
