
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int dwStatus; int hWave; int fInput; int hCallback; } ;
typedef TYPE_1__ WINE_MCIWAVE ;
struct TYPE_8__ {int dwCallback; } ;
typedef int MCIDEVICEID ;
typedef TYPE_2__* LPMCI_GENERIC_PARMS ;
typedef scalar_t__ HANDLE ;
typedef scalar_t__ DWORD ;


 scalar_t__ InterlockedExchangePointer (int *,int *) ;
 scalar_t__ MCIERR_INVALID_DEVICE_ID ;
 int MCI_MODE_NOT_READY ;



 int MCI_MODE_STOP ;
 scalar_t__ MCI_NOTIFY ;
 int MCI_NOTIFY_ABORTED ;
 int MCI_NOTIFY_SUCCESSFUL ;
 scalar_t__ MMSYSERR_NOERROR ;
 int Sleep (int) ;
 int TRACE (char*,int ,scalar_t__,TYPE_2__*) ;
 TYPE_1__* WAVE_mciGetOpenDev (int ) ;
 int WAVE_mciNotify (int ,TYPE_1__*,int ) ;
 int mciDriverNotify (scalar_t__,int ,int ) ;
 scalar_t__ waveInReset (int ) ;
 scalar_t__ waveOutReset (int ) ;

__attribute__((used)) static DWORD WAVE_mciStop(MCIDEVICEID wDevID, DWORD dwFlags, LPMCI_GENERIC_PARMS lpParms)
{
    DWORD dwRet = 0;
    WINE_MCIWAVE* wmw = WAVE_mciGetOpenDev(wDevID);

    TRACE("(%u, %08X, %p);\n", wDevID, dwFlags, lpParms);

    if (wmw == ((void*)0)) return MCIERR_INVALID_DEVICE_ID;

    if (wmw->dwStatus != MCI_MODE_STOP) {
 HANDLE old = InterlockedExchangePointer(&wmw->hCallback, ((void*)0));
 if (old) mciDriverNotify(old, wDevID, MCI_NOTIFY_ABORTED);
    }


    switch (wmw->dwStatus) {
    case 130:
    case 129:
    case 128:
 {
     int oldStat = wmw->dwStatus;
     wmw->dwStatus = MCI_MODE_NOT_READY;
     if (oldStat == 130)
  dwRet = (wmw->fInput) ? waveInReset(wmw->hWave) : waveOutReset(wmw->hWave);
 }
 while (wmw->dwStatus != MCI_MODE_STOP)
     Sleep(10);
 break;
    }


    wmw->dwStatus = MCI_MODE_STOP;

    if ((dwFlags & MCI_NOTIFY) && lpParms && MMSYSERR_NOERROR==dwRet)
 WAVE_mciNotify(lpParms->dwCallback, wmw, MCI_NOTIFY_SUCCESSFUL);

    return dwRet;
}
