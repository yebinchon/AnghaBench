
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_2__ {int pFiles; int fWide; int fNC; int pt; } ;
typedef int TCHAR ;
typedef int POINT ;
typedef int LPTSTR ;
typedef TYPE_1__* LPDROPFILES ;
typedef scalar_t__ LPBYTE ;
typedef int * HDROP ;
typedef int * HANDLE ;
typedef int DROPFILES ;
typedef int BOOL ;


 int COUNTOF (int *) ;
 int GMEM_DDESHARE ;
 int GMEM_MOVEABLE ;
 int GMEM_ZEROINIT ;
 int GetNextFile (int ,int *,int ) ;
 int * GlobalAlloc (int,int) ;
 scalar_t__ GlobalLock (int *) ;
 int GlobalUnlock (int *) ;
 int MAXPATHLEN ;
 int QualifyPath (int *) ;
 int TRUE ;
 int lstrcpy (int ,int *) ;
 int wcslen (int *) ;

HDROP CreateDropFiles(POINT pt, BOOL fNC, LPTSTR pszFiles)
{
    HANDLE hDrop;
    LPBYTE lpList;
    UINT cbList;
 LPTSTR szSrc;

    LPDROPFILES lpdfs;
    TCHAR szFile[MAXPATHLEN];

 cbList = sizeof(DROPFILES) + sizeof(TCHAR);

 szSrc = pszFiles;
    while (szSrc = GetNextFile(szSrc, szFile, COUNTOF(szFile)))
 {
        QualifyPath(szFile);

  cbList += (wcslen(szFile) + 1)*sizeof(TCHAR);
 }

    hDrop = GlobalAlloc(GMEM_DDESHARE|GMEM_MOVEABLE|GMEM_ZEROINIT, cbList);
    if (!hDrop)
        return ((void*)0);

    lpdfs = (LPDROPFILES)GlobalLock(hDrop);

    lpdfs->pFiles = sizeof(DROPFILES);
 lpdfs->pt = pt;
 lpdfs->fNC = fNC;
    lpdfs->fWide = TRUE;

 lpList = (LPBYTE)lpdfs + sizeof(DROPFILES);
 szSrc = pszFiles;

    while (szSrc = GetNextFile(szSrc, szFile, COUNTOF(szFile))) {

       QualifyPath(szFile);

       lstrcpy((LPTSTR)lpList, szFile);

       lpList += (wcslen(szFile) + 1)*sizeof(TCHAR);
    }

 GlobalUnlock(hDrop);

 return hDrop;
}
