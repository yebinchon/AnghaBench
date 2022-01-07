
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hCallback; int wDevID; } ;
typedef TYPE_1__ WINE_MCIMIDI ;
typedef int UINT ;
typedef int MCIDEVICEID ;
typedef scalar_t__ HANDLE ;
typedef int DWORD_PTR ;


 scalar_t__ HWND_32 (int ) ;
 scalar_t__ InterlockedExchangePointer (int *,int *) ;
 int LOWORD (int ) ;
 int MCI_NOTIFY_SUPERSEDED ;
 int mciDriverNotify (scalar_t__,int ,int ) ;

__attribute__((used)) static void MIDI_mciNotify(DWORD_PTR hWndCallBack, WINE_MCIMIDI* wmm, UINT wStatus)
{



    MCIDEVICEID wDevID = wmm->wDevID;
    HANDLE old = InterlockedExchangePointer(&wmm->hCallback, ((void*)0));
    if (old) mciDriverNotify(old, wDevID, MCI_NOTIFY_SUPERSEDED);
    mciDriverNotify(HWND_32(LOWORD(hWndCallBack)), wDevID, wStatus);
}
