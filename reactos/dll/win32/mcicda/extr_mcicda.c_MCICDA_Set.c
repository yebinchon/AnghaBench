
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int dwTimeFormat; } ;
typedef TYPE_1__ WINE_MCICDAUDIO ;
typedef int UINT ;
struct TYPE_7__ {int dwTimeFormat; int dwCallback; int dwAudio; } ;
typedef TYPE_2__* LPMCI_SET_PARMS ;
typedef int DWORD ;


 int FALSE ;
 TYPE_1__* MCICDA_GetOpenDrv (int ) ;
 int MCICDA_Notify (int ,TYPE_1__*,int ) ;
 int MCICDA_SetDoor (int ,int ) ;
 int MCIERR_BAD_TIME_FORMAT ;
 int MCIERR_INVALID_DEVICE_ID ;
 int MCIERR_NULL_PARAMETER_BLOCK ;



 int MCI_NOTIFY ;
 int MCI_NOTIFY_SUCCESSFUL ;
 int MCI_SET_AUDIO ;
 int MCI_SET_DOOR_CLOSED ;
 int MCI_SET_DOOR_OPEN ;
 int MCI_SET_TIME_FORMAT ;
 int TRACE (char*,...) ;
 int TRUE ;

__attribute__((used)) static DWORD MCICDA_Set(UINT wDevID, DWORD dwFlags, LPMCI_SET_PARMS lpParms)
{
    WINE_MCICDAUDIO* wmcda = MCICDA_GetOpenDrv(wDevID);

    TRACE("(%04X, %08X, %p);\n", wDevID, dwFlags, lpParms);

    if (wmcda == ((void*)0)) return MCIERR_INVALID_DEVICE_ID;

    if (dwFlags & MCI_SET_DOOR_OPEN) {
 MCICDA_SetDoor(wDevID, TRUE);
    }
    if (dwFlags & MCI_SET_DOOR_CLOSED) {
 MCICDA_SetDoor(wDevID, FALSE);
    }


    if (lpParms == ((void*)0)) return MCIERR_NULL_PARAMETER_BLOCK;



    if (dwFlags & MCI_SET_TIME_FORMAT) {
 switch (lpParms->dwTimeFormat) {
 case 130:
     TRACE("MCI_FORMAT_MILLISECONDS !\n");
     break;
 case 129:
     TRACE("MCI_FORMAT_MSF !\n");
     break;
 case 128:
     TRACE("MCI_FORMAT_TMSF !\n");
     break;
 default:
     return MCIERR_BAD_TIME_FORMAT;
 }
 wmcda->dwTimeFormat = lpParms->dwTimeFormat;
    }
    if (dwFlags & MCI_SET_AUDIO)
 TRACE("SET_AUDIO %X %x\n", dwFlags, lpParms->dwAudio);

    if (dwFlags & MCI_NOTIFY)
 MCICDA_Notify(lpParms->dwCallback, wmcda, MCI_NOTIFY_SUCCESSFUL);
    return 0;
}
