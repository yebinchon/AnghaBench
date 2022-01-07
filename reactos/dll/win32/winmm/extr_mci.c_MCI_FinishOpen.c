
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_6__ {int wDeviceID; int lpstrAlias; int lpstrElementName; } ;
struct TYPE_5__ {int wDeviceID; void* lpstrAlias; void* lpstrElementName; } ;
typedef TYPE_1__* LPWINE_MCIDRIVER ;
typedef TYPE_2__* LPMCI_OPEN_PARMSW ;
typedef int DWORD_PTR ;
typedef int DWORD ;


 int GetProcessHeap () ;
 void* HeapAlloc (int ,int ,int) ;
 int MCI_OPEN_ALIAS ;
 int MCI_OPEN_DRIVER ;
 int MCI_OPEN_ELEMENT ;
 int MCI_SendCommandFrom32 (int ,int ,int,int ) ;
 int strcpyW (void*,int ) ;
 int strlenW (int ) ;

__attribute__((used)) static DWORD MCI_FinishOpen(LPWINE_MCIDRIVER wmd, LPMCI_OPEN_PARMSW lpParms,
          DWORD dwParam)
{
    if (dwParam & MCI_OPEN_ELEMENT)
    {
        wmd->lpstrElementName = HeapAlloc(GetProcessHeap(),0,(strlenW(lpParms->lpstrElementName)+1) * sizeof(WCHAR));
        strcpyW( wmd->lpstrElementName, lpParms->lpstrElementName );
    }
    if (dwParam & MCI_OPEN_ALIAS)
    {
        wmd->lpstrAlias = HeapAlloc(GetProcessHeap(), 0, (strlenW(lpParms->lpstrAlias)+1) * sizeof(WCHAR));
        strcpyW( wmd->lpstrAlias, lpParms->lpstrAlias);
    }
    lpParms->wDeviceID = wmd->wDeviceID;

    return MCI_SendCommandFrom32(wmd->wDeviceID, MCI_OPEN_DRIVER, dwParam,
     (DWORD_PTR)lpParms);
}
