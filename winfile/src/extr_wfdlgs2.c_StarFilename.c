
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef scalar_t__ TCHAR ;
typedef scalar_t__* LPTSTR ;


 scalar_t__ CHAR_STAR ;
 scalar_t__* GetExtension (scalar_t__*) ;
 int MAXPATHLEN ;
 int StripPath (scalar_t__*) ;
 int lstrcpy (scalar_t__*,scalar_t__*) ;
 scalar_t__* szStarDotStar ;

VOID
StarFilename(LPTSTR pszPath)
{
   LPTSTR p;
   TCHAR szTemp[MAXPATHLEN];


   StripPath(pszPath);

   lstrcpy(szTemp, pszPath);

   p=GetExtension(szTemp);

   if (*p) {
      pszPath[0] = CHAR_STAR;
      lstrcpy(pszPath+1, p-1);
   } else {
      lstrcpy(pszPath, szStarDotStar);
   }
}
