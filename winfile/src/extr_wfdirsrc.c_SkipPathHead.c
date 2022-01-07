
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__* LPTSTR ;
typedef int INT ;


 scalar_t__ CHAR_BACKSLASH ;
 scalar_t__ CHAR_COLON ;
 scalar_t__ ISUNCPATH (scalar_t__*) ;

LPTSTR
SkipPathHead(LPTSTR lpszPath)
{
   LPTSTR p = lpszPath;
   INT i;

   if (ISUNCPATH(p)) {

      for(i=0, p+=2; *p && i<2; p++) {

         if (CHAR_BACKSLASH == *p)
            i++;
      }




      if (!*p)
         return ((void*)0);
      else
         return p;

   } else if (CHAR_COLON == lpszPath[1] && CHAR_BACKSLASH == lpszPath[2]) {





      return lpszPath+3;
   }

   return ((void*)0);
}
