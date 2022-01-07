
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_3__ {int bChanged; } ;
typedef TYPE_1__* PPORT_DATA ;
typedef scalar_t__ HWND ;


 int ComboBox_SetCurSel (scalar_t__,int ) ;
 int DEFAULT_BAUD_RATE_INDEX ;
 int DEFAULT_DATA_BITS_INDEX ;
 int DEFAULT_FLOW_CONTROL_INDEX ;
 int DEFAULT_PARITY_INDEX ;
 int DEFAULT_STOP_BITS_INDEX ;
 scalar_t__ GetDlgItem (scalar_t__,int ) ;
 int IDC_SERIAL_BITSPERSECOND ;
 int IDC_SERIAL_DATABITS ;
 int IDC_SERIAL_FLOWCONTROL ;
 int IDC_SERIAL_PARITY ;
 int IDC_SERIAL_STOPBITS ;
 int TRUE ;

__attribute__((used)) static
VOID
RestoreDefaultValues(
    HWND hwnd,
    PPORT_DATA pPortData)
{
    HWND hwndControl;


    hwndControl = GetDlgItem(hwnd, IDC_SERIAL_BITSPERSECOND);
    if (hwndControl)
    {
        ComboBox_SetCurSel(hwndControl, DEFAULT_BAUD_RATE_INDEX);
    }


    hwndControl = GetDlgItem(hwnd, IDC_SERIAL_DATABITS);
    if (hwndControl)
    {
        ComboBox_SetCurSel(hwndControl, DEFAULT_DATA_BITS_INDEX);
    }


    hwndControl = GetDlgItem(hwnd, IDC_SERIAL_PARITY);
    if (hwndControl)
    {
        ComboBox_SetCurSel(hwndControl, DEFAULT_PARITY_INDEX);
    }


    hwndControl = GetDlgItem(hwnd, IDC_SERIAL_STOPBITS);
    if (hwndControl)
    {
        ComboBox_SetCurSel(hwndControl, DEFAULT_STOP_BITS_INDEX);
    }


    hwndControl = GetDlgItem(hwnd, IDC_SERIAL_FLOWCONTROL);
    if (hwndControl)
    {
        ComboBox_SetCurSel(hwndControl, DEFAULT_FLOW_CONTROL_INDEX);
    }

    pPortData->bChanged = TRUE;
}
