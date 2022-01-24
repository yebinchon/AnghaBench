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
struct TYPE_3__ {scalar_t__ fDtrControl; } ;
typedef  scalar_t__ HANDLE ;
typedef  int DWORD ;
typedef  TYPE_1__ DCB ;

/* Variables and functions */
 int /*<<< orphan*/  CLRDTR ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ DTR_CONTROL_HANDSHAKE ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,TYPE_1__*) ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int MS_CTS_ON ; 
 int MS_DSR_ON ; 
 int MS_RING_ON ; 
 int MS_RLSD_ON ; 
 int /*<<< orphan*/  SETDTR ; 
 int /*<<< orphan*/  loopback_dtr_dcd ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static void FUNC7(void)
{
    HANDLE hcom;
    DWORD ModemStat = 0, defaultStat = 0;
    DCB dcb;

    if (!loopback_dtr_dcd) return;

    hcom = FUNC5(FALSE);
    if (hcom == INVALID_HANDLE_VALUE) return;

    FUNC4(FUNC3(hcom, &dcb), "GetCommState failed\n");
    if (dcb.fDtrControl == DTR_CONTROL_HANDSHAKE)
    {
	FUNC6("DTR_CONTROL_HANDSHAKE is set, so don't manipulate DTR\n");
        FUNC0(hcom);
	return;
    }
    FUNC4(FUNC2(hcom, &defaultStat), "GetCommModemStatus failed\n");
    /* XP returns some values in the low nibble, so mask them out*/
    defaultStat &= MS_CTS_ON|MS_DSR_ON|MS_RING_ON|MS_RLSD_ON;
    if(defaultStat & MS_RLSD_ON)
    {
	FUNC4(FUNC1(hcom, CLRDTR), "EscapeCommFunction failed to clear DTR\n");
	FUNC4(FUNC2(hcom, &ModemStat), "GetCommModemStatus failed\n");
	FUNC4 ((ModemStat & MS_RLSD_ON) == 0, "RLSD didn't react: 0x%04x,  expected 0x%04x\n",
	    ModemStat, (defaultStat & ~MS_RLSD_ON));
	FUNC4(FUNC1(hcom, SETDTR), "EscapeCommFunction failed to set DTR\n");
	FUNC4(FUNC2(hcom, &ModemStat), "GetCommModemStatus failed\n");
	FUNC4 (ModemStat ==  defaultStat, "Failed to restore RLSD: 0x%04x, expected 0x%04x\n",
	    ModemStat, defaultStat);
    }
    else
    {
	FUNC4(FUNC1(hcom, SETDTR), "EscapeCommFunction failed to set DTR\n");
	FUNC4(FUNC2(hcom, &ModemStat), "GetCommModemStatus failed\n");
	FUNC4 ((ModemStat & MS_RLSD_ON) == MS_RLSD_ON,
            "RLSD didn't react: 0x%04x,  expected 0x%04x\n",
	    ModemStat, (defaultStat | MS_RLSD_ON));
	FUNC4(FUNC1(hcom, CLRDTR), "EscapeCommFunction failed to clear DTR\n");
	FUNC4(FUNC2(hcom, &ModemStat), "GetCommModemStatus failed\n");
	FUNC4 (ModemStat ==  defaultStat, "Failed to restore RLSD: 0x%04x, expected 0x%04x\n",
	    ModemStat, defaultStat);
    }

    FUNC0(hcom);
}