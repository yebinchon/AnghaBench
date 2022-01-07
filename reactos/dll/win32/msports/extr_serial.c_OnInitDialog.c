
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int WPARAM ;
typedef int **** WCHAR ;
typedef size_t UINT ;
struct TYPE_5__ {scalar_t__ lParam; } ;
struct TYPE_4__ {int nFlowControlIndex; int nStopBitsIndex; int nParityIndex; int nDataBitsIndex; int nBaudRateIndex; } ;
typedef TYPE_1__* PPORT_DATA ;
typedef TYPE_2__* LPPROPSHEETPAGEW ;
typedef scalar_t__ LPARAM ;
typedef int LONG_PTR ;
typedef scalar_t__ HWND ;
typedef int BOOL ;


 size_t ARRAYSIZE (int *****) ;
 int ***** BaudRates ;
 int ComboBox_AddString (scalar_t__,int ****) ;
 int ComboBox_SetCurSel (scalar_t__,int ) ;
 int DWLP_USER ;
 int ***** DataBits ;
 int ERR (char*) ;
 int EnableWindow (scalar_t__,int ) ;
 int FALSE ;
 int FillComboBox (scalar_t__,int *****) ;
 scalar_t__ GetDlgItem (scalar_t__,int ) ;
 int IDC_SERIAL_ADVANCED ;
 int IDC_SERIAL_BITSPERSECOND ;
 int IDC_SERIAL_DATABITS ;
 int IDC_SERIAL_FLOWCONTROL ;
 int IDC_SERIAL_PARITY ;
 int IDC_SERIAL_STOPBITS ;
 int IDS_FLOWCONTROL ;
 int IDS_PARITY ;
 int IDS_STOPBITS ;
 int LoadStringW (int ,int ,int *****,size_t) ;
 int ReadPortSettings (TYPE_1__*) ;
 int SetWindowLongPtr (scalar_t__,int ,int ) ;
 int TRACE (char*) ;
 int TRUE ;
 int _ultow (int ****,int *****,int) ;
 int hInstance ;

__attribute__((used)) static
BOOL
OnInitDialog(
    HWND hwnd,
    WPARAM wParam,
    LPARAM lParam)
{
    PPORT_DATA pPortData;
    WCHAR szBuffer[256];
    UINT i;
    HWND hwndControl;

    TRACE("OnInitDialog()\n");

    pPortData = (PPORT_DATA)((LPPROPSHEETPAGEW)lParam)->lParam;
    if (pPortData == ((void*)0))
    {
        ERR("pPortData is NULL\n");
        return FALSE;
    }

    SetWindowLongPtr(hwnd, DWLP_USER, (LONG_PTR)pPortData);


    ReadPortSettings(pPortData);


    hwndControl = GetDlgItem(hwnd, IDC_SERIAL_BITSPERSECOND);
    if (hwndControl)
    {
        for (i = 0; i < ARRAYSIZE(BaudRates); i++)
        {
            _ultow(BaudRates[i], szBuffer, 10);
            ComboBox_AddString(hwndControl, szBuffer);
        }

        ComboBox_SetCurSel(hwndControl, pPortData->nBaudRateIndex);
    }


    hwndControl = GetDlgItem(hwnd, IDC_SERIAL_DATABITS);
    if (hwndControl)
    {
        for (i = 0; i < ARRAYSIZE(DataBits); i++)
        {
            ComboBox_AddString(hwndControl, DataBits[i]);
        }

        ComboBox_SetCurSel(hwndControl, pPortData->nDataBitsIndex);
    }


    LoadStringW(hInstance, IDS_PARITY, szBuffer, ARRAYSIZE(szBuffer));

    hwndControl = GetDlgItem(hwnd, IDC_SERIAL_PARITY);
    if (hwndControl)
    {
        FillComboBox(hwndControl, szBuffer);
        ComboBox_SetCurSel(hwndControl, pPortData->nParityIndex);
    }


    LoadStringW(hInstance, IDS_STOPBITS, szBuffer, ARRAYSIZE(szBuffer));

    hwndControl = GetDlgItem(hwnd, IDC_SERIAL_STOPBITS);
    if (hwndControl)
    {
        FillComboBox(hwndControl, szBuffer);
        ComboBox_SetCurSel(hwndControl, pPortData->nStopBitsIndex);
    }


    LoadStringW(hInstance, IDS_FLOWCONTROL, szBuffer, ARRAYSIZE(szBuffer));

    hwndControl = GetDlgItem(hwnd, IDC_SERIAL_FLOWCONTROL);
    if (hwndControl)
    {
        FillComboBox(hwndControl, szBuffer);
        ComboBox_SetCurSel(hwndControl, pPortData->nFlowControlIndex);
    }


    hwndControl = GetDlgItem(hwnd, IDC_SERIAL_ADVANCED);
    if (hwndControl)
        EnableWindow(hwndControl, FALSE);

    return TRUE;
}
