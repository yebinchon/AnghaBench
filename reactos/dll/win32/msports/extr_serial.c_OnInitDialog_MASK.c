#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WPARAM ;
typedef  int /*<<< orphan*/ **** WCHAR ;
typedef  size_t UINT ;
struct TYPE_5__ {scalar_t__ lParam; } ;
struct TYPE_4__ {int /*<<< orphan*/  nFlowControlIndex; int /*<<< orphan*/  nStopBitsIndex; int /*<<< orphan*/  nParityIndex; int /*<<< orphan*/  nDataBitsIndex; int /*<<< orphan*/  nBaudRateIndex; } ;
typedef  TYPE_1__* PPORT_DATA ;
typedef  TYPE_2__* LPPROPSHEETPAGEW ;
typedef  scalar_t__ LPARAM ;
typedef  int /*<<< orphan*/  LONG_PTR ;
typedef  scalar_t__ HWND ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *****) ; 
 int /*<<< orphan*/ ***** BaudRates ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ****) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DWLP_USER ; 
 int /*<<< orphan*/ ***** DataBits ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ *****) ; 
 scalar_t__ FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IDC_SERIAL_ADVANCED ; 
 int /*<<< orphan*/  IDC_SERIAL_BITSPERSECOND ; 
 int /*<<< orphan*/  IDC_SERIAL_DATABITS ; 
 int /*<<< orphan*/  IDC_SERIAL_FLOWCONTROL ; 
 int /*<<< orphan*/  IDC_SERIAL_PARITY ; 
 int /*<<< orphan*/  IDC_SERIAL_STOPBITS ; 
 int /*<<< orphan*/  IDS_FLOWCONTROL ; 
 int /*<<< orphan*/  IDS_PARITY ; 
 int /*<<< orphan*/  IDS_STOPBITS ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *****,size_t) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ****,int /*<<< orphan*/ *****,int) ; 
 int /*<<< orphan*/  hInstance ; 

__attribute__((used)) static
BOOL
FUNC12(
    HWND hwnd,
    WPARAM wParam,
    LPARAM lParam)
{
    PPORT_DATA pPortData;
    WCHAR szBuffer[256];
    UINT i;
    HWND hwndControl;

    FUNC10("OnInitDialog()\n");

    pPortData = (PPORT_DATA)((LPPROPSHEETPAGEW)lParam)->lParam;
    if (pPortData == NULL)
    {
        FUNC3("pPortData is NULL\n");
        return FALSE;
    }

    FUNC9(hwnd, DWLP_USER, (LONG_PTR)pPortData);

    /* Read and parse the port settings */
    FUNC8(pPortData);

    /* Fill the 'Bits per second' combobox */
    hwndControl = FUNC6(hwnd, IDC_SERIAL_BITSPERSECOND);
    if (hwndControl)
    {
        for (i = 0; i < FUNC0(BaudRates); i++)
        {
            FUNC11(BaudRates[i], szBuffer, 10);
            FUNC1(hwndControl, szBuffer);
        }

        FUNC2(hwndControl, pPortData->nBaudRateIndex);
    }

    /* Fill the 'Data bits' combobox */
    hwndControl = FUNC6(hwnd, IDC_SERIAL_DATABITS);
    if (hwndControl)
    {
        for (i = 0; i < FUNC0(DataBits); i++)
        {
            FUNC1(hwndControl, DataBits[i]);
        }

        FUNC2(hwndControl, pPortData->nDataBitsIndex);
    }

    /* Fill the 'Parity' combobox */
    FUNC7(hInstance, IDS_PARITY, szBuffer, FUNC0(szBuffer));

    hwndControl = FUNC6(hwnd, IDC_SERIAL_PARITY);
    if (hwndControl)
    {
        FUNC5(hwndControl, szBuffer);
        FUNC2(hwndControl, pPortData->nParityIndex);
    }

    /* Fill the 'Stop bits' combobox */
    FUNC7(hInstance, IDS_STOPBITS, szBuffer, FUNC0(szBuffer));

    hwndControl = FUNC6(hwnd, IDC_SERIAL_STOPBITS);
    if (hwndControl)
    {
        FUNC5(hwndControl, szBuffer);
        FUNC2(hwndControl, pPortData->nStopBitsIndex);
    }

    /* Fill the 'Flow control' combobox */
    FUNC7(hInstance, IDS_FLOWCONTROL, szBuffer, FUNC0(szBuffer));

    hwndControl = FUNC6(hwnd, IDC_SERIAL_FLOWCONTROL);
    if (hwndControl)
    {
        FUNC5(hwndControl, szBuffer);
        FUNC2(hwndControl, pPortData->nFlowControlIndex);
    }

    /* Disable the 'Advanced' button */
    hwndControl = FUNC6(hwnd, IDC_SERIAL_ADVANCED);
    if (hwndControl)
        FUNC4(hwndControl, FALSE);

    return TRUE;
}