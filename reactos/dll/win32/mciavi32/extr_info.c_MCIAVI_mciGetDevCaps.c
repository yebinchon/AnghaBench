
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int cs; } ;
typedef TYPE_1__ WINE_MCIAVI ;
typedef int UINT ;
struct TYPE_6__ {int dwItem; void* dwReturn; } ;
typedef TYPE_2__* LPMCI_GETDEVCAPS_PARMS ;
typedef int DWORD ;


 int EnterCriticalSection (int *) ;
 int FALSE ;
 int FIXME (char*,int) ;
 int LeaveCriticalSection (int *) ;
 void* MAKEMCIRESOURCE (int ,int ) ;
 TYPE_1__* MCIAVI_mciGetOpenDev (int ) ;
 int MCIERR_INVALID_DEVICE_ID ;
 int MCIERR_MISSING_PARAMETER ;
 int MCIERR_NULL_PARAMETER_BLOCK ;
 int MCIERR_UNSUPPORTED_FUNCTION ;
 int MCI_DEVTYPE_DIGITAL_VIDEO ;
 int MCI_FALSE ;
 int MCI_GETDEVCAPS_ITEM ;

 int MCI_RESOURCE_RETURNED ;
 int MCI_TEST ;
 int MCI_TRUE ;
 int TRACE (char*,...) ;
 int TRUE ;

DWORD MCIAVI_mciGetDevCaps(UINT wDevID, DWORD dwFlags, LPMCI_GETDEVCAPS_PARMS lpParms)
{
    WINE_MCIAVI* wma = MCIAVI_mciGetOpenDev(wDevID);
    DWORD ret = MCIERR_UNSUPPORTED_FUNCTION;

    TRACE("(%04x, %08X, %p)\n", wDevID, dwFlags, lpParms);

    if (lpParms == ((void*)0)) return MCIERR_NULL_PARAMETER_BLOCK;
    if (wma == ((void*)0)) return MCIERR_INVALID_DEVICE_ID;
    if (!(dwFlags & MCI_GETDEVCAPS_ITEM)) return MCIERR_MISSING_PARAMETER;
    if (dwFlags & MCI_TEST) return 0;

    EnterCriticalSection(&wma->cs);

    if (dwFlags & MCI_GETDEVCAPS_ITEM) {
 switch (lpParms->dwItem) {
 case 131:
     TRACE("MCI_GETDEVCAPS_DEVICE_TYPE !\n");
     lpParms->dwReturn = MAKEMCIRESOURCE(MCI_DEVTYPE_DIGITAL_VIDEO, MCI_DEVTYPE_DIGITAL_VIDEO);
     ret = MCI_RESOURCE_RETURNED;
     break;
 case 130:
     TRACE("MCI_GETDEVCAPS_HAS_AUDIO !\n");
     lpParms->dwReturn = MAKEMCIRESOURCE(TRUE, MCI_TRUE);
     ret = MCI_RESOURCE_RETURNED;
     break;
 case 129:
     TRACE("MCI_GETDEVCAPS_HAS_VIDEO !\n");
     lpParms->dwReturn = MAKEMCIRESOURCE(TRUE, MCI_TRUE);
     ret = MCI_RESOURCE_RETURNED;
     break;
 case 128:
     TRACE("MCI_GETDEVCAPS_USES_FILES !\n");
     lpParms->dwReturn = MAKEMCIRESOURCE(TRUE, MCI_TRUE);
     ret = MCI_RESOURCE_RETURNED;
     break;
 case 132:
     TRACE("MCI_GETDEVCAPS_COMPOUND_DEVICE !\n");
     lpParms->dwReturn = MAKEMCIRESOURCE(TRUE, MCI_TRUE);
     ret = MCI_RESOURCE_RETURNED;
     break;
 case 136:
     TRACE("MCI_GETDEVCAPS_CAN_EJECT !\n");
     lpParms->dwReturn = MAKEMCIRESOURCE(FALSE, MCI_FALSE);
     ret = MCI_RESOURCE_RETURNED;
     break;
 case 135:
     TRACE("MCI_GETDEVCAPS_CAN_PLAY !\n");
     lpParms->dwReturn = MAKEMCIRESOURCE(TRUE, MCI_TRUE);
     ret = MCI_RESOURCE_RETURNED;
     break;
 case 134:
     TRACE("MCI_GETDEVCAPS_CAN_RECORD !\n");
     lpParms->dwReturn = MAKEMCIRESOURCE(FALSE, MCI_FALSE);
     ret = MCI_RESOURCE_RETURNED;
     break;
 case 133:
     TRACE("MCI_GETDEVCAPS_CAN_SAVE !\n");
     lpParms->dwReturn = MAKEMCIRESOURCE(FALSE, MCI_FALSE);
     ret = MCI_RESOURCE_RETURNED;
     break;
 case 142:
     TRACE("MCI_DGV_GETDEVCAPS_CAN_REVERSE !\n");
     lpParms->dwReturn = MAKEMCIRESOURCE(FALSE, MCI_FALSE);
     ret = MCI_RESOURCE_RETURNED;
     break;
 case 141:
     TRACE("MCI_DGV_GETDEVCAPS_CAN_STRETCH !\n");
     lpParms->dwReturn = MAKEMCIRESOURCE(FALSE, MCI_FALSE);
     ret = MCI_RESOURCE_RETURNED;
     break;
 case 143:
     TRACE("MCI_DGV_GETDEVCAPS_CAN_LOCK !\n");
     lpParms->dwReturn = MAKEMCIRESOURCE(FALSE, MCI_FALSE);
     ret = MCI_RESOURCE_RETURNED;
     break;
 case 144:
     TRACE("MCI_DGV_GETDEVCAPS_CAN_FREEZE !\n");
     lpParms->dwReturn = MAKEMCIRESOURCE(FALSE, MCI_FALSE);
     ret = MCI_RESOURCE_RETURNED;
     break;
 case 140:
     TRACE("MCI_DGV_GETDEVCAPS_CAN_STRETCH_INPUT !\n");
     lpParms->dwReturn = MAKEMCIRESOURCE(FALSE, MCI_FALSE);
     ret = MCI_RESOURCE_RETURNED;
     break;
 case 138:
     TRACE("MCI_DGV_GETDEVCAPS_HAS_STILL !\n");
     lpParms->dwReturn = MAKEMCIRESOURCE(FALSE, MCI_FALSE);
     ret = MCI_RESOURCE_RETURNED;
     break;
 case 139:
     TRACE("MCI_DGV_GETDEVCAPS_CAN_TEST !\n");
     lpParms->dwReturn = MAKEMCIRESOURCE(TRUE, MCI_TRUE);
     ret = MCI_RESOURCE_RETURNED;
     break;
 case 137:
     TRACE("MCI_DGV_GETDEVCAPS_PALETTES !\n");
     lpParms->dwReturn = MAKEMCIRESOURCE(FALSE, MCI_FALSE);
     ret = MCI_RESOURCE_RETURNED;
     break;

 default:
            FIXME("Unknown capability (%08x) !\n", lpParms->dwItem);
            break;
 }
    }

    LeaveCriticalSection(&wma->cs);
    return ret;
}
