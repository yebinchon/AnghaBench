
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int dwStatus; scalar_t__ hThread; scalar_t__ hMidi; int wDevID; int hCallback; } ;
typedef TYPE_1__ WINE_MCIMIDI ;
struct TYPE_8__ {int dwCallback; } ;
typedef TYPE_2__* LPMCI_GENERIC_PARMS ;
typedef int HMIDIOUT ;
typedef scalar_t__ HANDLE ;
typedef scalar_t__ DWORD ;


 int INFINITE ;
 scalar_t__ InterlockedExchangePointer (int *,int *) ;
 int MCI_MODE_NOT_READY ;
 int MCI_MODE_PAUSE ;
 int MCI_MODE_STOP ;
 scalar_t__ MCI_NOTIFY ;
 int MCI_NOTIFY_ABORTED ;
 int MCI_NOTIFY_SUCCESSFUL ;
 int MIDI_mciNotify (int ,TYPE_1__*,int ) ;
 scalar_t__ MMSYSERR_NOERROR ;
 int TRACE (char*,int ,scalar_t__,TYPE_2__*) ;
 int WaitForSingleObject (scalar_t__,int ) ;
 int mciDriverNotify (scalar_t__,int ,int ) ;
 scalar_t__ midiOutReset (int ) ;

__attribute__((used)) static DWORD MIDI_mciStop(WINE_MCIMIDI* wmm, DWORD dwFlags, LPMCI_GENERIC_PARMS lpParms)
{
    DWORD dwRet = 0;

    TRACE("(%d, %08X, %p);\n", wmm->wDevID, dwFlags, lpParms);

    if (wmm->dwStatus != MCI_MODE_STOP) {
 HANDLE old = InterlockedExchangePointer(&wmm->hCallback, ((void*)0));
 if (old) mciDriverNotify(old, wmm->wDevID, MCI_NOTIFY_ABORTED);
    }

    if (wmm->dwStatus != MCI_MODE_STOP) {
 int oldstat = wmm->dwStatus;

 wmm->dwStatus = MCI_MODE_NOT_READY;
 if (oldstat == MCI_MODE_PAUSE)
     dwRet = midiOutReset((HMIDIOUT)wmm->hMidi);

 if (wmm->hThread)
     WaitForSingleObject(wmm->hThread, INFINITE);
    }


    wmm->dwStatus = MCI_MODE_STOP;

    if ((dwFlags & MCI_NOTIFY) && lpParms && MMSYSERR_NOERROR==dwRet)
 MIDI_mciNotify(lpParms->dwCallback, wmm, MCI_NOTIFY_SUCCESSFUL);
    return dwRet;
}
