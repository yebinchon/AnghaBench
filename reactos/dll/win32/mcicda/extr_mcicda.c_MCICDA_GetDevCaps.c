
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WINE_MCICDAUDIO ;
typedef int UINT ;
struct TYPE_3__ {int dwItem; int dwReturn; int dwCallback; } ;
typedef TYPE_1__* LPMCI_GETDEVCAPS_PARMS ;
typedef int DWORD ;


 int FALSE ;
 void* MAKEMCIRESOURCE (int ,int ) ;
 int MCICDA_Notify (int ,int *,int ) ;
 int MCIERR_INVALID_DEVICE_ID ;
 int MCIERR_MISSING_PARAMETER ;
 int MCIERR_NULL_PARAMETER_BLOCK ;
 int MCIERR_UNSUPPORTED_FUNCTION ;
 int MCI_DEVTYPE_CD_AUDIO ;
 int MCI_FALSE ;
 int MCI_GETDEVCAPS_ITEM ;

 int MCI_NOTIFY ;
 int MCI_NOTIFY_SUCCESSFUL ;
 int MCI_RESOURCE_RETURNED ;
 int MCI_TRUE ;
 int TRACE (char*,...) ;
 int TRUE ;
 int WARN (char*,int) ;
 scalar_t__ mciGetDriverData (int ) ;

__attribute__((used)) static DWORD MCICDA_GetDevCaps(UINT wDevID, DWORD dwFlags,
       LPMCI_GETDEVCAPS_PARMS lpParms)
{
    WINE_MCICDAUDIO* wmcda = (WINE_MCICDAUDIO*)mciGetDriverData(wDevID);
    DWORD ret = 0;

    TRACE("(%04X, %08X, %p);\n", wDevID, dwFlags, lpParms);

    if (lpParms == ((void*)0)) return MCIERR_NULL_PARAMETER_BLOCK;
    if (wmcda == ((void*)0)) return MCIERR_INVALID_DEVICE_ID;

    if (dwFlags & MCI_GETDEVCAPS_ITEM) {
 TRACE("MCI_GETDEVCAPS_ITEM dwItem=%08X;\n", lpParms->dwItem);

 switch (lpParms->dwItem) {
 case 134:
     lpParms->dwReturn = MAKEMCIRESOURCE(FALSE, MCI_FALSE);
     ret = MCI_RESOURCE_RETURNED;
     break;
 case 130:
     lpParms->dwReturn = MAKEMCIRESOURCE(TRUE, MCI_TRUE);
     ret = MCI_RESOURCE_RETURNED;
     break;
 case 129:
     lpParms->dwReturn = MAKEMCIRESOURCE(FALSE, MCI_FALSE);
     ret = MCI_RESOURCE_RETURNED;
     break;
 case 131:
     lpParms->dwReturn = MAKEMCIRESOURCE(MCI_DEVTYPE_CD_AUDIO, MCI_DEVTYPE_CD_AUDIO);
     ret = MCI_RESOURCE_RETURNED;
     break;
 case 128:
     lpParms->dwReturn = MAKEMCIRESOURCE(FALSE, MCI_FALSE);
     ret = MCI_RESOURCE_RETURNED;
     break;
 case 132:
     lpParms->dwReturn = MAKEMCIRESOURCE(FALSE, MCI_FALSE);
     ret = MCI_RESOURCE_RETURNED;
     break;
 case 136:
     lpParms->dwReturn = MAKEMCIRESOURCE(TRUE, MCI_TRUE);
     ret = MCI_RESOURCE_RETURNED;
     break;
 case 135:
     lpParms->dwReturn = MAKEMCIRESOURCE(TRUE, MCI_TRUE);
     ret = MCI_RESOURCE_RETURNED;
     break;
 case 133:
     lpParms->dwReturn = MAKEMCIRESOURCE(FALSE, MCI_FALSE);
     ret = MCI_RESOURCE_RETURNED;
     break;
 default:
            WARN("Unsupported %x devCaps item\n", lpParms->dwItem);
     return MCIERR_UNSUPPORTED_FUNCTION;
 }
    } else {
 TRACE("No GetDevCaps-Item !\n");
 return MCIERR_MISSING_PARAMETER;
    }
    TRACE("lpParms->dwReturn=%08X;\n", lpParms->dwReturn);
    if (dwFlags & MCI_NOTIFY) {
 MCICDA_Notify(lpParms->dwCallback, wmcda, MCI_NOTIFY_SUCCESSFUL);
    }
    return ret;
}
