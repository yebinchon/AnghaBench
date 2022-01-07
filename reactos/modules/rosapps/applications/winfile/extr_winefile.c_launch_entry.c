
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_7__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int WCHAR ;
typedef int UINT ;
struct TYPE_10__ {int iMalloc; } ;
struct TYPE_9__ {scalar_t__ etype; scalar_t__ pidl; } ;
struct TYPE_8__ {int cbSize; scalar_t__ lpIDList; int nShow; int * lpDirectory; int * lpParameters; int * lpFile; int * lpVerb; int hwnd; int fMask; } ;
typedef TYPE_1__ SHELLEXECUTEINFOW ;
typedef int HWND ;
typedef TYPE_2__ Entry ;
typedef int BOOL ;


 scalar_t__ ET_SHELL ;
 int FALSE ;
 int GetLastError () ;
 TYPE_7__ Globals ;
 int IMalloc_Free (int ,scalar_t__) ;
 int MAX_PATH ;
 int SEE_MASK_IDLIST ;
 int ShellExecuteExW (TYPE_1__*) ;
 int TRUE ;
 int display_error (int ,int ) ;
 int get_path (TYPE_2__*,int *) ;
 scalar_t__ get_to_absolute_pidl (TYPE_2__*,int ) ;
 int launch_file (int ,int *,int ) ;

__attribute__((used)) static BOOL launch_entry(Entry* entry, HWND hwnd, UINT nCmdShow)
{
 WCHAR cmd[MAX_PATH];

 if (entry->etype == ET_SHELL) {
  BOOL ret = TRUE;

  SHELLEXECUTEINFOW shexinfo;

  shexinfo.cbSize = sizeof(SHELLEXECUTEINFOW);
  shexinfo.fMask = SEE_MASK_IDLIST;
  shexinfo.hwnd = hwnd;
  shexinfo.lpVerb = ((void*)0);
  shexinfo.lpFile = ((void*)0);
  shexinfo.lpParameters = ((void*)0);
  shexinfo.lpDirectory = ((void*)0);
  shexinfo.nShow = nCmdShow;
  shexinfo.lpIDList = get_to_absolute_pidl(entry, hwnd);

  if (!ShellExecuteExW(&shexinfo)) {
   display_error(hwnd, GetLastError());
   ret = FALSE;
  }

  if (shexinfo.lpIDList != entry->pidl)
   IMalloc_Free(Globals.iMalloc, shexinfo.lpIDList);

  return ret;
 }

 get_path(entry, cmd);


 return launch_file(hwnd, cmd, nCmdShow);
}
