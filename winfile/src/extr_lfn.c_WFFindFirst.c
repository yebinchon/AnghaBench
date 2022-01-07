
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {long dwFileAttributes; } ;
struct TYPE_7__ {scalar_t__ hFindFile; int nSpaceLeft; long dwAttrFilter; TYPE_5__ fd; scalar_t__ err; } ;
typedef int PVOID ;
typedef scalar_t__* LPTSTR ;
typedef TYPE_1__* LPLFNDTA ;
typedef int INT ;
typedef long DWORD ;
typedef int BOOL ;


 long ATTR_ARCHIVE ;
 long ATTR_COMPRESSED ;
 long ATTR_DIR ;
 long ATTR_ENCRYPTED ;
 long ATTR_HS ;
 long ATTR_NORMAL ;
 long ATTR_NOT_INDEXED ;
 long ATTR_READONLY ;
 long ATTR_REPARSE_POINT ;
 long ATTR_TEMPORARY ;
 long ATTR_USED ;
 scalar_t__ CHAR_BACKSLASH ;
 int FALSE ;
 int FindExInfoStandard ;
 int FindExSearchLimitToDirectories ;
 scalar_t__ FindFirstFile (scalar_t__*,TYPE_5__*) ;
 scalar_t__ FindFirstFileEx (scalar_t__*,int ,TYPE_5__*,int ,int *,int ) ;
 scalar_t__ GetLastError () ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int MAXPATHLEN ;
 int TRUE ;
 int WFFindClose (TYPE_1__*) ;
 scalar_t__ WFFindNext (TYPE_1__*) ;
 int Wow64DisableWow64FsRedirection (int *) ;
 int Wow64RevertWow64FsRedirection (int ) ;
 int lstrlen (scalar_t__*) ;

BOOL
WFFindFirst(
   LPLFNDTA lpFind,
   LPTSTR lpName,
   DWORD dwAttrFilter)
{
   INT nLen;
   LPTSTR pEnd;







   PVOID oldValue;
   Wow64DisableWow64FsRedirection(&oldValue);

   if ((dwAttrFilter & ~(ATTR_DIR | ATTR_HS)) == 0)
   {

    lpFind->hFindFile = FindFirstFileEx(lpName, FindExInfoStandard, &lpFind->fd, FindExSearchLimitToDirectories, ((void*)0), 0);
   }
   else
   {

    lpFind->hFindFile = FindFirstFile(lpName, &lpFind->fd);
   }

   if (lpFind->hFindFile == INVALID_HANDLE_VALUE) {
       lpFind->err = GetLastError();
   } else {
       lpFind->err = 0;
   }


   dwAttrFilter |= ATTR_ARCHIVE | ATTR_READONLY | ATTR_NORMAL | ATTR_REPARSE_POINT |
    ATTR_TEMPORARY | ATTR_COMPRESSED | ATTR_ENCRYPTED | ATTR_NOT_INDEXED;

   lpFind->fd.dwFileAttributes &= ATTR_USED;

   Wow64RevertWow64FsRedirection(oldValue);




   nLen = lstrlen(lpName);
   pEnd = &lpName[nLen-1];

   while (CHAR_BACKSLASH != *pEnd) {
      pEnd--;
      nLen--;
   }

   lpFind->nSpaceLeft = MAXPATHLEN-nLen-1;

   if (lpFind->hFindFile != INVALID_HANDLE_VALUE) {
      lpFind->dwAttrFilter = dwAttrFilter;
      if ((~dwAttrFilter & lpFind->fd.dwFileAttributes) == 0L ||
         WFFindNext(lpFind)) {
         return(TRUE);
      } else {
         WFFindClose(lpFind);
         return(FALSE);
      }
   } else {
      return(FALSE);
   }
}
