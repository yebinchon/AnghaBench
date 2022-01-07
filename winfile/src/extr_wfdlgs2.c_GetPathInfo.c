
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef scalar_t__* LPTSTR ;
typedef int BOOL ;


 scalar_t__ CHAR_BACKSLASH ;
 scalar_t__ CHAR_COLON ;
 scalar_t__ CHAR_DQUOTE ;
 scalar_t__ CHAR_SPACE ;
 int FALSE ;

VOID
GetPathInfo(LPTSTR szTemp, LPTSTR *ppDir, LPTSTR *ppFile, LPTSTR *ppPar)
{

   BOOL bInQuotes=FALSE;



   for (*ppDir = szTemp; **ppDir == CHAR_SPACE; (*ppDir)++)
      ;




   for (*ppPar = *ppDir; **ppPar && (**ppPar != CHAR_SPACE || bInQuotes) ; (*ppPar)++)
      if ( CHAR_DQUOTE == **ppPar ) bInQuotes = !bInQuotes;



   for (*ppFile = *ppPar; *ppFile > *ppDir; --(*ppFile)) {
      if (((*ppFile)[-1] == CHAR_COLON) || ((*ppFile)[-1] == CHAR_BACKSLASH))
         break;
   }
}
