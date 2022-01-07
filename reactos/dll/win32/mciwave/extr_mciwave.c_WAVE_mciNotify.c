
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hCallback; int wNotifyDeviceID; } ;
typedef TYPE_1__ WINE_MCIWAVE ;
typedef int UINT ;
typedef int MCIDEVICEID ;
typedef scalar_t__ HANDLE ;
typedef int DWORD_PTR ;


 scalar_t__ HWND_32 (int ) ;
 scalar_t__ InterlockedExchangePointer (int *,int *) ;
 int LOWORD (int ) ;
 int MCI_NOTIFY_SUPERSEDED ;
 int mciDriverNotify (scalar_t__,int ,int ) ;

__attribute__((used)) static void WAVE_mciNotify(DWORD_PTR hWndCallBack, WINE_MCIWAVE* wmw, UINT wStatus)
{



    MCIDEVICEID wDevID = wmw->wNotifyDeviceID;
    HANDLE old = InterlockedExchangePointer(&wmw->hCallback, ((void*)0));
    if (old) mciDriverNotify(old, wDevID, MCI_NOTIFY_SUPERSEDED);
    mciDriverNotify(HWND_32(LOWORD(hWndCallBack)), wDevID, wStatus);
}
