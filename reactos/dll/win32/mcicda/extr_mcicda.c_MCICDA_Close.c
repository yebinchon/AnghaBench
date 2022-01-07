
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ nUseCount; int handle; } ;
typedef TYPE_1__ WINE_MCICDAUDIO ;
typedef int UINT ;
struct TYPE_8__ {int dwCallback; } ;
typedef TYPE_2__* LPMCI_GENERIC_PARMS ;
typedef int DWORD ;


 int CloseHandle (int ) ;
 TYPE_1__* MCICDA_GetOpenDrv (int ) ;
 int MCICDA_Notify (int ,TYPE_1__*,int ) ;
 int MCICDA_Stop (int ,int ,int *) ;
 int MCIERR_INVALID_DEVICE_ID ;
 int MCI_NOTIFY ;
 int MCI_NOTIFY_SUCCESSFUL ;
 int MCI_WAIT ;
 int TRACE (char*,int ,int,TYPE_2__*) ;

__attribute__((used)) static DWORD MCICDA_Close(UINT wDevID, DWORD dwParam, LPMCI_GENERIC_PARMS lpParms)
{
    WINE_MCICDAUDIO* wmcda = MCICDA_GetOpenDrv(wDevID);

    TRACE("(%04X, %08X, %p);\n", wDevID, dwParam, lpParms);

    if (wmcda == ((void*)0)) return MCIERR_INVALID_DEVICE_ID;

    MCICDA_Stop(wDevID, MCI_WAIT, ((void*)0));

    if (--wmcda->nUseCount == 0) {
 CloseHandle(wmcda->handle);
    }
    if ((dwParam & MCI_NOTIFY) && lpParms)
 MCICDA_Notify(lpParms->dwCallback, wmcda, MCI_NOTIFY_SUCCESSFUL);
    return 0;
}
