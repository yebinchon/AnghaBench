
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__* LPTSTR ;
typedef int BOOL ;


 scalar_t__ CHAR_BACKSLASH ;
 int FALSE ;
 int SZ_BACKSLASH ;
 int SZ_COLON ;
 int TEXT (char*) ;
 int TRUE ;
 int lstrcmpi (scalar_t__*,int ) ;

BOOL
IsRootDirectory(register LPTSTR pPath)
{
  if (!lstrcmpi(pPath+1, TEXT(":\\")))
      return(TRUE);
  if (!lstrcmpi(pPath, SZ_BACKSLASH))
      return(TRUE);
  if (!lstrcmpi(pPath+1, SZ_COLON))
      return(TRUE);



  if (*pPath == CHAR_BACKSLASH && *(pPath+1) == CHAR_BACKSLASH) {
    LPTSTR p;
    int cBackslashes=0;

    for (p=pPath+2; *p; ) {
      if (*p == CHAR_BACKSLASH && (++cBackslashes > 1))
   return FALSE;

   p++;

    }
    return TRUE;

  }

  return(FALSE);
}
