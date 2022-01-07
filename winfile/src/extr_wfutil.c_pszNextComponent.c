
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int* LPWSTR ;
typedef int BOOL ;


 int CHAR_NULL ;
 int FALSE ;

LPWSTR
pszNextComponent(
   LPWSTR p)
{
   BOOL bInQuotes = FALSE;

   while (*p == L' ' || *p == L'\t')
      p++;




   while (*p) {

      if ((*p == L' ' || *p == L'\t') && !bInQuotes)
         break;

      if (*p == L'\"')
         bInQuotes = !bInQuotes;

      p++;
   }

   if (*p) {
      *p++ = CHAR_NULL;

      while (*p == L' ' || *p == L'\t')
         p++;
   }

   return p;
}
