
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int strm_string ;


 int FALSE ;
 int TRUE ;
 int isalnum (int) ;
 int isalpha (int) ;
 int strm_str_len (int ) ;
 char* strm_str_ptr (int ) ;

__attribute__((used)) static int
str_symbol_p(strm_string str)
{
  const char* p = strm_str_ptr(str);
  const char* pend = p + strm_str_len(str);

  if (!isalpha((int)*p) && *p != '_')
    return FALSE;
  p++;
  while (p<pend) {
    if (!isalnum((int)*p) && *p != '_')
      return FALSE;
    p++;
  }
  return TRUE;
}
