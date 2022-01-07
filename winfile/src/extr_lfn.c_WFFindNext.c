
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int dwFileAttributes; int * cAlternateFileName; int * cFileName; } ;
struct TYPE_4__ {int dwAttrFilter; scalar_t__ nSpaceLeft; scalar_t__ err; TYPE_3__ fd; int hFindFile; } ;
typedef int PVOID ;
typedef TYPE_1__* LPLFNDTA ;
typedef int BOOL ;


 int ATTR_USED ;
 int FALSE ;
 scalar_t__ FindNextFile (int ,TYPE_3__*) ;
 scalar_t__ GetLastError () ;
 int TRUE ;
 int Wow64DisableWow64FsRedirection (int *) ;
 int Wow64RevertWow64FsRedirection (int ) ;
 int lstrcpy (int *,int *) ;
 scalar_t__ lstrlen (int *) ;

BOOL
WFFindNext(LPLFNDTA lpFind)
{
 PVOID oldValue;
 Wow64DisableWow64FsRedirection(&oldValue);

   while (FindNextFile(lpFind->hFindFile, &lpFind->fd)) {

   lpFind->fd.dwFileAttributes &= ATTR_USED;




      if ((lpFind->fd.dwFileAttributes & ~lpFind->dwAttrFilter) != 0)
         continue;




      if (lstrlen(lpFind->fd.cFileName) > lpFind->nSpaceLeft) {

         if (!lpFind->fd.cAlternateFileName[0] ||
            lstrlen(lpFind->fd.cAlternateFileName) > lpFind->nSpaceLeft) {

            continue;
         }




         lstrcpy(lpFind->fd.cFileName, lpFind->fd.cAlternateFileName);
      }

   Wow64RevertWow64FsRedirection(oldValue);
      lpFind->err = 0;
      return TRUE;
   }

   lpFind->err = GetLastError();

   Wow64RevertWow64FsRedirection(oldValue);
   return(FALSE);
}
