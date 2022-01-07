
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ hThread; scalar_t__ stopEvent; int handle; int * dsObj; int * dsBuf; int wNotifyDeviceID; int hCallback; } ;
typedef TYPE_1__ WINE_MCICDAUDIO ;
typedef int UINT ;
struct TYPE_8__ {int dwCallback; } ;
typedef TYPE_2__* LPMCI_GENERIC_PARMS ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;


 int CloseHandle (scalar_t__) ;
 int IDirectSoundBuffer_Release (int *) ;
 int IDirectSound_Release (int *) ;
 int INFINITE ;
 int IOCTL_CDROM_STOP_AUDIO ;
 scalar_t__ InterlockedExchangePointer (int *,int *) ;
 TYPE_1__* MCICDA_GetOpenDrv (int ) ;
 int MCICDA_Notify (int ,TYPE_1__*,int ) ;
 int MCIERR_HARDWARE ;
 int MCIERR_INVALID_DEVICE_ID ;
 int MCI_NOTIFY ;
 int MCI_NOTIFY_ABORTED ;
 int MCI_NOTIFY_SUCCESSFUL ;
 int SetEvent (scalar_t__) ;
 int TRACE (char*,int ,int,TYPE_2__*) ;
 int WaitForSingleObject (scalar_t__,int ) ;
 int device_io (int ,int ,int *,int ,int *,int ,int*,int *) ;
 int mciDriverNotify (scalar_t__,int ,int ) ;

__attribute__((used)) static DWORD MCICDA_Stop(UINT wDevID, DWORD dwFlags, LPMCI_GENERIC_PARMS lpParms)
{
    WINE_MCICDAUDIO* wmcda = MCICDA_GetOpenDrv(wDevID);
    HANDLE oldcb;
    DWORD br;

    TRACE("(%04X, %08X, %p);\n", wDevID, dwFlags, lpParms);

    if (wmcda == ((void*)0)) return MCIERR_INVALID_DEVICE_ID;

    oldcb = InterlockedExchangePointer(&wmcda->hCallback, ((void*)0));
    if (oldcb) mciDriverNotify(oldcb, wmcda->wNotifyDeviceID, MCI_NOTIFY_ABORTED);

    if (wmcda->hThread != 0) {
        SetEvent(wmcda->stopEvent);
        WaitForSingleObject(wmcda->hThread, INFINITE);

        CloseHandle(wmcda->hThread);
        wmcda->hThread = 0;
        CloseHandle(wmcda->stopEvent);
        wmcda->stopEvent = 0;

        IDirectSoundBuffer_Release(wmcda->dsBuf);
        wmcda->dsBuf = ((void*)0);
        IDirectSound_Release(wmcda->dsObj);
        wmcda->dsObj = ((void*)0);
    }
    else if (!device_io(wmcda->handle, IOCTL_CDROM_STOP_AUDIO, ((void*)0), 0, ((void*)0), 0, &br, ((void*)0)))
        return MCIERR_HARDWARE;

    if ((dwFlags & MCI_NOTIFY) && lpParms)
 MCICDA_Notify(lpParms->dwCallback, wmcda, MCI_NOTIFY_SUCCESSFUL);
    return 0;
}
