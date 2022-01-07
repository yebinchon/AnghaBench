
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_3__ {int cbSize; scalar_t__ hIcon; scalar_t__ dwHotKey; int nShow; int * lpDirectory; int * lpParameters; scalar_t__ lpVerb; int hwnd; scalar_t__ fMask; } ;
typedef int LPVOID ;
typedef scalar_t__ LPCSTR ;
typedef int LPCITEMIDLIST ;
typedef int IShellFolder ;
typedef scalar_t__ INT_PTR ;
typedef int IContextMenu ;
typedef int HWND ;
typedef int HRESULT ;
typedef scalar_t__ HMENU ;
typedef TYPE_1__ CMINVOKECOMMANDINFO ;
typedef scalar_t__ BOOL ;


 int CMF_NORMAL ;
 scalar_t__ CreatePopupMenu () ;
 int * CtxMenu_query_interfaces (int *) ;
 int CtxMenu_reset () ;
 scalar_t__ FAILED (int ) ;
 scalar_t__ FALSE ;
 scalar_t__ FCIDM_SHVIEWFIRST ;
 int FCIDM_SHVIEWLAST ;
 int IContextMenu_InvokeCommand (int *,TYPE_1__*) ;
 int IContextMenu_QueryContextMenu (int *,scalar_t__,int ,scalar_t__,int ,int ) ;
 int IContextMenu_Release (int *) ;
 int IID_IContextMenu ;
 int IShellFolder_GetUIObjectOf (int *,int ,int,int *,int *,int *,int *) ;
 scalar_t__ SUCCEEDED (int ) ;
 int SW_SHOWNORMAL ;
 int S_FALSE ;
 int S_OK ;
 int TPM_LEFTALIGN ;
 int TPM_RETURNCMD ;
 int TPM_RIGHTBUTTON ;
 scalar_t__ TRUE ;
 scalar_t__ TrackPopupMenu (scalar_t__,int,int,int,int ,int ,int *) ;

__attribute__((used)) static HRESULT ShellFolderContextMenu(IShellFolder* shell_folder, HWND hwndParent, int cidl, LPCITEMIDLIST* apidl, int x, int y)
{
 IContextMenu* pcm;
 BOOL executed = FALSE;

 HRESULT hr = IShellFolder_GetUIObjectOf(shell_folder, hwndParent, cidl, apidl, &IID_IContextMenu, ((void*)0), (LPVOID*)&pcm);

 if (SUCCEEDED(hr)) {
  HMENU hmenu = CreatePopupMenu();

  pcm = CtxMenu_query_interfaces(pcm);

  if (hmenu) {
   hr = IContextMenu_QueryContextMenu(pcm, hmenu, 0, FCIDM_SHVIEWFIRST, FCIDM_SHVIEWLAST, CMF_NORMAL);

   if (SUCCEEDED(hr)) {
    UINT idCmd = TrackPopupMenu(hmenu, TPM_LEFTALIGN|TPM_RETURNCMD|TPM_RIGHTBUTTON, x, y, 0, hwndParent, ((void*)0));

    CtxMenu_reset();

    if (idCmd) {
      CMINVOKECOMMANDINFO cmi;

      cmi.cbSize = sizeof(CMINVOKECOMMANDINFO);
      cmi.fMask = 0;
      cmi.hwnd = hwndParent;
      cmi.lpVerb = (LPCSTR)(INT_PTR)(idCmd - FCIDM_SHVIEWFIRST);
      cmi.lpParameters = ((void*)0);
      cmi.lpDirectory = ((void*)0);
      cmi.nShow = SW_SHOWNORMAL;
      cmi.dwHotKey = 0;
      cmi.hIcon = 0;

      hr = IContextMenu_InvokeCommand(pcm, &cmi);
     executed = TRUE;
    }
   } else
    CtxMenu_reset();
  }

  IContextMenu_Release(pcm);
 }

 return FAILED(hr)? hr: executed? S_OK: S_FALSE;
}
