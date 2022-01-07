
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int handle; } ;
typedef TYPE_1__ WINE_MCICDAUDIO ;
typedef int UINT ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 int IOCTL_STORAGE_EJECT_MEDIA ;
 int IOCTL_STORAGE_LOAD_MEDIA ;
 TYPE_1__* MCICDA_GetOpenDrv (int ) ;
 int MCIERR_HARDWARE ;
 int MCIERR_INVALID_DEVICE_ID ;
 int TRACE (char*,int ,char*) ;
 int device_io (int ,int ,int *,int ,int *,int ,int *,int *) ;

__attribute__((used)) static DWORD MCICDA_SetDoor(UINT wDevID, BOOL open)
{
    WINE_MCICDAUDIO* wmcda = MCICDA_GetOpenDrv(wDevID);
    DWORD br;

    TRACE("(%04x, %s) !\n", wDevID, (open) ? "OPEN" : "CLOSE");

    if (wmcda == ((void*)0)) return MCIERR_INVALID_DEVICE_ID;

    if (!device_io(wmcda->handle,
                         (open) ? IOCTL_STORAGE_EJECT_MEDIA : IOCTL_STORAGE_LOAD_MEDIA,
                         ((void*)0), 0, ((void*)0), 0, &br, ((void*)0)))
 return MCIERR_HARDWARE;

    return 0;
}
