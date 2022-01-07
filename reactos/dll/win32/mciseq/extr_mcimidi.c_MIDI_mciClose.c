
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ dwStatus; scalar_t__ nUseCount; scalar_t__ hFile; int lpstrName; int lpstrCopyright; int lpstrElementName; int tracks; scalar_t__ hThread; int wDevID; } ;
typedef TYPE_1__ WINE_MCIMIDI ;
struct TYPE_9__ {int dwCallback; } ;
typedef TYPE_2__* LPMCI_GENERIC_PARMS ;
typedef int DWORD ;


 int CloseHandle (scalar_t__) ;
 int GetProcessHeap () ;
 int HeapFree (int ,int ,int ) ;
 int MCIERR_INTERNAL ;
 scalar_t__ MCI_MODE_STOP ;
 int MCI_NOTIFY ;
 int MCI_NOTIFY_SUCCESSFUL ;
 int MCI_WAIT ;
 int MIDI_mciNotify (int ,TYPE_1__*,int ) ;
 int MIDI_mciStop (TYPE_1__*,int ,TYPE_2__*) ;
 int TRACE (char*,...) ;
 int mmioClose (scalar_t__,int ) ;

__attribute__((used)) static DWORD MIDI_mciClose(WINE_MCIMIDI* wmm, DWORD dwFlags, LPMCI_GENERIC_PARMS lpParms)
{

    TRACE("(%d, %08X, %p);\n", wmm->wDevID, dwFlags, lpParms);

    if (wmm->dwStatus != MCI_MODE_STOP) {

 MIDI_mciStop(wmm, MCI_WAIT, lpParms);
    }

    wmm->nUseCount--;
    if (wmm->nUseCount == 0) {
 if (wmm->hFile != 0) {
     mmioClose(wmm->hFile, 0);
     wmm->hFile = 0;
     TRACE("hFile closed !\n");
 }
 if (wmm->hThread) {
     CloseHandle(wmm->hThread);
     wmm->hThread = 0;
 }
 HeapFree(GetProcessHeap(), 0, wmm->tracks);
 HeapFree(GetProcessHeap(), 0, wmm->lpstrElementName);
 HeapFree(GetProcessHeap(), 0, wmm->lpstrCopyright);
 HeapFree(GetProcessHeap(), 0, wmm->lpstrName);
    } else {
 TRACE("Shouldn't happen... nUseCount=%d\n", wmm->nUseCount);
 return MCIERR_INTERNAL;
    }

    if ((dwFlags & MCI_NOTIFY) && lpParms) {
 MIDI_mciNotify(lpParms->dwCallback, wmm, MCI_NOTIFY_SUCCESSFUL);
    }
    return 0;
}
