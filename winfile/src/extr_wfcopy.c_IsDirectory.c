
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TCHAR ;
typedef int LPTSTR ;
typedef int BOOL ;


 int FindFileName (int ) ;
 scalar_t__ ISDOTDIR (int ) ;
 scalar_t__ IsRootDirectory (int ) ;
 int MAXPATHLEN ;
 int QualifyPath (int *) ;
 int TRUE ;
 int WFIsDir (int *) ;
 int lstrcpy (int *,int ) ;

BOOL
IsDirectory(LPTSTR pPath)
{
  LPTSTR pT;
  TCHAR szTemp[MAXPATHLEN];

  if (IsRootDirectory(pPath))
      return TRUE;


  pT = FindFileName(pPath);

  if (ISDOTDIR(pT)) {
     return TRUE;
  }

  lstrcpy(szTemp, pPath);




  QualifyPath(szTemp);

  return WFIsDir(szTemp);
}
