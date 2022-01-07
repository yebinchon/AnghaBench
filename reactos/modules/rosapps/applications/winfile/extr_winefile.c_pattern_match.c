
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* LPCWSTR ;
typedef scalar_t__ BOOL ;


 scalar_t__ FALSE ;
 scalar_t__ TRUE ;

__attribute__((used)) static BOOL pattern_match(LPCWSTR str, LPCWSTR pattern)
{
 for( ; *str&&*pattern; str++,pattern++) {
  if (*pattern == '*') {
   do pattern++;
   while(*pattern == '*');

   if (!*pattern)
    return TRUE;

   for(; *str; str++)
    if (*str==*pattern && pattern_match(str, pattern))
     return TRUE;

   return FALSE;
  }
  else if (*str!=*pattern && *pattern!='?')
   return FALSE;
 }

 if (*str || *pattern)
  if (*pattern!='*' || pattern[1]!='\0')
   return FALSE;

 return TRUE;
}
