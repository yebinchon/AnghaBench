
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int strm_value ;
typedef int strm_string ;
typedef scalar_t__ strm_int ;


 scalar_t__ memcmp (int ,int ,scalar_t__) ;
 scalar_t__ strm_str_len (int ) ;
 int strm_str_ptr (int ) ;
 int strm_value_str (int ) ;

__attribute__((used)) static int
str_cmp(strm_value x, strm_value y)
{
  strm_string a = strm_value_str(x);
  strm_string b = strm_value_str(y);
  strm_int alen = strm_str_len(a);
  strm_int blen = strm_str_len(b);
  strm_int len, cmp;

  if (alen > blen) {
    len = blen;
  }
  else {
    len = alen;
  }
  cmp = memcmp(strm_str_ptr(a), strm_str_ptr(b), len);
  if (cmp == 0) {
    if (alen > len) return 1;
    if (blen > len) return -1;
  }
  return cmp;
}
