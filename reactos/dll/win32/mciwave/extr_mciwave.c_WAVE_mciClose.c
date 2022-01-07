
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ dwStatus; scalar_t__ nUseCount; scalar_t__ hFile; int * lpFileName; int wfxRef; int * lpWaveFormat; } ;
typedef TYPE_1__ WINE_MCIWAVE ;
struct TYPE_9__ {int dwCallback; } ;
typedef int MCIDEVICEID ;
typedef TYPE_2__* LPMCI_GENERIC_PARMS ;
typedef scalar_t__ DWORD ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,int *) ;
 scalar_t__ MCIERR_INVALID_DEVICE_ID ;
 scalar_t__ MCI_MODE_STOP ;
 scalar_t__ MCI_NOTIFY ;
 int MCI_NOTIFY_FAILURE ;
 int MCI_NOTIFY_SUCCESSFUL ;
 int MCI_WAIT ;
 int TRACE (char*,int ,scalar_t__,TYPE_2__*) ;
 TYPE_1__* WAVE_mciGetOpenDev (int ) ;
 int WAVE_mciNotify (int ,TYPE_1__*,int ) ;
 scalar_t__ WAVE_mciStop (int ,int ,TYPE_2__*) ;
 int mmioClose (scalar_t__,int ) ;

__attribute__((used)) static DWORD WAVE_mciClose(MCIDEVICEID wDevID, DWORD dwFlags, LPMCI_GENERIC_PARMS lpParms)
{
    DWORD dwRet = 0;
    WINE_MCIWAVE* wmw = WAVE_mciGetOpenDev(wDevID);

    TRACE("(%u, %08X, %p);\n", wDevID, dwFlags, lpParms);

    if (wmw == ((void*)0)) return MCIERR_INVALID_DEVICE_ID;

    if (wmw->dwStatus != MCI_MODE_STOP) {

 dwRet = WAVE_mciStop(wDevID, MCI_WAIT, lpParms);
    }

    wmw->nUseCount--;

    if (wmw->nUseCount == 0) {
 if (wmw->hFile != 0) {
     mmioClose(wmw->hFile, 0);
     wmw->hFile = 0;
 }
    }

    if (wmw->lpWaveFormat != &wmw->wfxRef)
 HeapFree(GetProcessHeap(), 0, wmw->lpWaveFormat);
    wmw->lpWaveFormat = &wmw->wfxRef;
    HeapFree(GetProcessHeap(), 0, wmw->lpFileName);
    wmw->lpFileName = ((void*)0);

    if ((dwFlags & MCI_NOTIFY) && lpParms) {
 WAVE_mciNotify(lpParms->dwCallback, wmw,
     (dwRet == 0) ? MCI_NOTIFY_SUCCESSFUL : MCI_NOTIFY_FAILURE);
    }

    return 0;
}
