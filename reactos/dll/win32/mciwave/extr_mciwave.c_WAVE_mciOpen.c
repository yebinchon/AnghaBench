
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ nUseCount; scalar_t__ hFile; int * lpFileName; int dwStatus; scalar_t__ dwPosition; int wNotifyDeviceID; int * hCallback; scalar_t__ hWave; int fInput; int wOutput; int wInput; } ;
typedef TYPE_1__ WINE_MCIWAVE ;
struct TYPE_8__ {int dwCallback; int lpstrElementName; int wDeviceID; } ;
typedef int MCIDEVICEID ;
typedef int LRESULT ;
typedef TYPE_2__* LPMCI_WAVE_OPEN_PARMSW ;
typedef int DWORD ;


 int FALSE ;
 int GetProcessHeap () ;
 int HeapFree (int ,int ,int *) ;
 int MCIERR_DEVICE_OPEN ;
 int MCIERR_INVALID_DEVICE_ID ;
 int MCIERR_NULL_PARAMETER_BLOCK ;
 int MCIERR_UNRECOGNIZED_COMMAND ;
 int MCIERR_UNSUPPORTED_FUNCTION ;
 int MCI_MODE_NOT_READY ;
 int MCI_MODE_STOP ;
 int MCI_NOTIFY ;
 int MCI_NOTIFY_SUCCESSFUL ;
 int MCI_OPEN_ELEMENT ;
 int MCI_OPEN_ELEMENT_ID ;
 int MCI_OPEN_SHAREABLE ;
 int TRACE (char*,scalar_t__,...) ;
 int WAVE_MAPPER ;
 int WAVE_mciDefaultFmt (TYPE_1__*) ;
 int WAVE_mciNotify (int ,TYPE_1__*,int ) ;
 int WAVE_mciOpenFile (TYPE_1__*,int ) ;
 scalar_t__ mciGetDriverData (int ) ;
 int mmioClose (scalar_t__,int ) ;

__attribute__((used)) static LRESULT WAVE_mciOpen(MCIDEVICEID wDevID, DWORD dwFlags, LPMCI_WAVE_OPEN_PARMSW lpOpenParms)
{
    DWORD dwRet = 0;
    WINE_MCIWAVE* wmw = (WINE_MCIWAVE*)mciGetDriverData(wDevID);

    TRACE("(%04X, %08X, %p)\n", wDevID, dwFlags, lpOpenParms);
    if (lpOpenParms == ((void*)0)) return MCIERR_NULL_PARAMETER_BLOCK;
    if (wmw == ((void*)0)) return MCIERR_INVALID_DEVICE_ID;

    if (dwFlags & MCI_OPEN_SHAREABLE)
 return MCIERR_UNSUPPORTED_FUNCTION;

    if (wmw->nUseCount > 0) {



 return MCIERR_DEVICE_OPEN;
    }

    wmw->nUseCount++;

    wmw->wInput = wmw->wOutput = WAVE_MAPPER;
    wmw->fInput = FALSE;
    wmw->hWave = 0;
    wmw->dwStatus = MCI_MODE_NOT_READY;
    wmw->hFile = 0;
    wmw->lpFileName = ((void*)0);
    wmw->hCallback = ((void*)0);
    WAVE_mciDefaultFmt(wmw);

    TRACE("wDevID=%04X (lpParams->wDeviceID=%08X)\n", wDevID, lpOpenParms->wDeviceID);

    wmw->wNotifyDeviceID = wDevID;

    if (dwFlags & MCI_OPEN_ELEMENT) {
 if (dwFlags & MCI_OPEN_ELEMENT_ID) {



     dwRet = MCIERR_UNRECOGNIZED_COMMAND;
 } else {
            dwRet = WAVE_mciOpenFile(wmw, lpOpenParms->lpstrElementName);
 }
    }
    TRACE("hFile=%p\n", wmw->hFile);

    if (dwRet == 0) {
 wmw->dwPosition = 0;

 wmw->dwStatus = MCI_MODE_STOP;

 if (dwFlags & MCI_NOTIFY)
     WAVE_mciNotify(lpOpenParms->dwCallback, wmw, MCI_NOTIFY_SUCCESSFUL);
    } else {
 wmw->nUseCount--;
 if (wmw->hFile != 0)
     mmioClose(wmw->hFile, 0);
 wmw->hFile = 0;
 HeapFree(GetProcessHeap(), 0, wmw->lpFileName);
 wmw->lpFileName = ((void*)0);
    }
    return dwRet;
}
