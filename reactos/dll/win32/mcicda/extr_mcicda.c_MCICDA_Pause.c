
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ hThread; int handle; int dsBuf; int stopEvent; int wNotifyDeviceID; int hCallback; } ;
typedef TYPE_1__ WINE_MCICDAUDIO ;
typedef int UINT ;
struct TYPE_8__ {int dwCallback; } ;
typedef TYPE_2__* LPMCI_GENERIC_PARMS ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;


 scalar_t__ FAILED (int ) ;
 int IDirectSoundBuffer_Stop (int ) ;
 int IOCTL_CDROM_PAUSE_AUDIO ;
 scalar_t__ InterlockedExchangePointer (int *,int *) ;
 TYPE_1__* MCICDA_GetOpenDrv (int ) ;
 int MCICDA_Notify (int ,TYPE_1__*,int ) ;
 int MCIERR_HARDWARE ;
 int MCIERR_INVALID_DEVICE_ID ;
 int MCI_NOTIFY ;
 int MCI_NOTIFY_ABORTED ;
 int MCI_NOTIFY_SUCCESSFUL ;
 int TRACE (char*,int ,int,TYPE_2__*) ;
 scalar_t__ WAIT_OBJECT_0 ;
 scalar_t__ WaitForSingleObject (int ,int ) ;
 int device_io (int ,int ,int *,int ,int *,int ,int*,int *) ;
 int mciDriverNotify (scalar_t__,int ,int ) ;

__attribute__((used)) static DWORD MCICDA_Pause(UINT wDevID, DWORD dwFlags, LPMCI_GENERIC_PARMS lpParms)
{
    WINE_MCICDAUDIO* wmcda = MCICDA_GetOpenDrv(wDevID);
    HANDLE oldcb;
    DWORD br;

    TRACE("(%04X, %08X, %p);\n", wDevID, dwFlags, lpParms);

    if (wmcda == ((void*)0)) return MCIERR_INVALID_DEVICE_ID;

    oldcb = InterlockedExchangePointer(&wmcda->hCallback, ((void*)0));
    if (oldcb) mciDriverNotify(oldcb, wmcda->wNotifyDeviceID, MCI_NOTIFY_ABORTED);

    if (wmcda->hThread != 0) {

        if(WaitForSingleObject(wmcda->stopEvent, 0) != WAIT_OBJECT_0 &&
           FAILED(IDirectSoundBuffer_Stop(wmcda->dsBuf)))
            return MCIERR_HARDWARE;
    }
    else if (!device_io(wmcda->handle, IOCTL_CDROM_PAUSE_AUDIO, ((void*)0), 0, ((void*)0), 0, &br, ((void*)0)))
        return MCIERR_HARDWARE;

    if ((dwFlags & MCI_NOTIFY) && lpParms)
 MCICDA_Notify(lpParms->dwCallback, wmcda, MCI_NOTIFY_SUCCESSFUL);
    return 0;
}
