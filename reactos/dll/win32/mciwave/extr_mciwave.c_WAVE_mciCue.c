
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ dwStatus; } ;
typedef TYPE_1__ WINE_MCIWAVE ;
struct TYPE_8__ {int dwCallback; } ;
typedef int MCIDEVICEID ;
typedef TYPE_2__* LPMCI_GENERIC_PARMS ;
typedef int DWORD ;


 int MCIERR_INVALID_DEVICE_ID ;
 int MCIERR_NONAPPLICABLE_FUNCTION ;
 scalar_t__ MCI_MODE_STOP ;
 int MCI_NOTIFY ;
 int MCI_NOTIFY_SUCCESSFUL ;
 int MMSYSERR_NOERROR ;
 int TRACE (char*,int ,int,TYPE_2__*) ;
 TYPE_1__* WAVE_mciGetOpenDev (int ) ;
 int WAVE_mciNotify (int ,TYPE_1__*,int ) ;

__attribute__((used)) static DWORD WAVE_mciCue(MCIDEVICEID wDevID, DWORD dwFlags, LPMCI_GENERIC_PARMS lpParms)
{
    WINE_MCIWAVE* wmw = WAVE_mciGetOpenDev(wDevID);

    TRACE("(%u, %08X, %p);\n", wDevID, dwFlags, lpParms);
    if (wmw == ((void*)0)) return MCIERR_INVALID_DEVICE_ID;
    if (wmw->dwStatus != MCI_MODE_STOP) return MCIERR_NONAPPLICABLE_FUNCTION;

    if ((dwFlags & MCI_NOTIFY) && lpParms)
 WAVE_mciNotify(lpParms->dwCallback,wmw,MCI_NOTIFY_SUCCESSFUL);

    return MMSYSERR_NOERROR;
}
