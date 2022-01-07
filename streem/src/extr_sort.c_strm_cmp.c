
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int strm_value ;


 int num_cmp (int ,int ) ;
 int str_cmp (int ,int ) ;
 scalar_t__ strm_number_p (int ) ;
 scalar_t__ strm_string_p (int ) ;

__attribute__((used)) static int
strm_cmp(strm_value a, strm_value b)
{
  if (strm_number_p(a)) {
    if (strm_number_p(b)) {
      return num_cmp(a,b);
    }
    return -1;
  }
  if (strm_string_p(a)) {
    if (strm_string_p(b)) {
      return str_cmp(a,b);
    }
    if (strm_number_p(b)) {
      return 1;
    }
    return 1;
  }
  return 1;
}
