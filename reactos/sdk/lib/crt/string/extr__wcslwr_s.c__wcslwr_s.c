
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char wchar_t ;


 int EINVAL ;
 int* _errno () ;
 char towlower (char) ;

int _wcslwr_s(wchar_t* str, size_t n)
{
  wchar_t *ptr=str;
  if (!str || !n)
  {
    if (str) *str = '\0';
    *_errno() = EINVAL;
    return EINVAL;
  }

  while (n--)
  {
    if (!*ptr) return 0;
    *ptr = towlower(*ptr);
    ptr++;
  }



  *str = '\0';
  *_errno() = EINVAL;
  return EINVAL;
}
