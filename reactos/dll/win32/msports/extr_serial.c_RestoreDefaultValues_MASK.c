#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_3__ {int /*<<< orphan*/  bChanged; } ;
typedef  TYPE_1__* PPORT_DATA ;
typedef  scalar_t__ HWND ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DEFAULT_BAUD_RATE_INDEX ; 
 int /*<<< orphan*/  DEFAULT_DATA_BITS_INDEX ; 
 int /*<<< orphan*/  DEFAULT_FLOW_CONTROL_INDEX ; 
 int /*<<< orphan*/  DEFAULT_PARITY_INDEX ; 
 int /*<<< orphan*/  DEFAULT_STOP_BITS_INDEX ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IDC_SERIAL_BITSPERSECOND ; 
 int /*<<< orphan*/  IDC_SERIAL_DATABITS ; 
 int /*<<< orphan*/  IDC_SERIAL_FLOWCONTROL ; 
 int /*<<< orphan*/  IDC_SERIAL_PARITY ; 
 int /*<<< orphan*/  IDC_SERIAL_STOPBITS ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static
VOID
FUNC2(
    HWND hwnd,
    PPORT_DATA pPortData)
{
    HWND hwndControl;

    /* Reset the 'Bits per second' combobox */
    hwndControl = FUNC1(hwnd, IDC_SERIAL_BITSPERSECOND);
    if (hwndControl)
    {
        FUNC0(hwndControl, DEFAULT_BAUD_RATE_INDEX);
    }

    /* Reset the 'Data bits' combobox */
    hwndControl = FUNC1(hwnd, IDC_SERIAL_DATABITS);
    if (hwndControl)
    {
        FUNC0(hwndControl, DEFAULT_DATA_BITS_INDEX);
    }

    /* Reset the 'Parity' combobox */
    hwndControl = FUNC1(hwnd, IDC_SERIAL_PARITY);
    if (hwndControl)
    {
        FUNC0(hwndControl, DEFAULT_PARITY_INDEX);
    }

    /* Reset the 'Stop bits' combobox */
    hwndControl = FUNC1(hwnd, IDC_SERIAL_STOPBITS);
    if (hwndControl)
    {
        FUNC0(hwndControl, DEFAULT_STOP_BITS_INDEX);
    }

    /* Reset the 'Flow control' combobox */
    hwndControl = FUNC1(hwnd, IDC_SERIAL_FLOWCONTROL);
    if (hwndControl)
    {
        FUNC0(hwndControl, DEFAULT_FLOW_CONTROL_INDEX);
    }

    pPortData->bChanged = TRUE;
}