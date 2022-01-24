#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  dcb ;
struct TYPE_4__ {scalar_t__ fRtsControl; } ;
typedef  scalar_t__ HANDLE ;
typedef  int DWORD ;
typedef  TYPE_1__ DCB ;

/* Variables and functions */
 int /*<<< orphan*/  CLRRTS ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,TYPE_1__*) ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int MS_CTS_ON ; 
 int MS_DSR_ON ; 
 int MS_RING_ON ; 
 int MS_RLSD_ON ; 
 scalar_t__ RTS_CONTROL_HANDSHAKE ; 
 int /*<<< orphan*/  SETRTS ; 
 int /*<<< orphan*/  loopback_rts_cts ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,...) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static void FUNC8(void)
{
    HANDLE hcom;
    DWORD ModemStat = 0, defaultStat = 0;
    DCB dcb;

    if (!loopback_rts_cts) return;

    hcom = FUNC6(FALSE);
    if (hcom == INVALID_HANDLE_VALUE) return;

    FUNC4 (&dcb, 0, sizeof (dcb));
    FUNC5(FUNC3(hcom, &dcb), "GetCommState failed\n");
    if (dcb.fRtsControl == RTS_CONTROL_HANDSHAKE)
    {
	FUNC7("RTS_CONTROL_HANDSHAKE is set, so don't manipulate RTS\n");
	FUNC0(hcom);
	return;
    }
    FUNC5(FUNC2(hcom, &defaultStat), "GetCommModemStatus failed\n");
    /* XP returns some values in the low nibble, so mask them out*/
    defaultStat &= MS_CTS_ON|MS_DSR_ON|MS_RING_ON|MS_RLSD_ON;
    if(defaultStat & MS_CTS_ON)
    {
	FUNC5(FUNC1(hcom, CLRRTS), "EscapeCommFunction failed to clear RTS\n");
	FUNC5(FUNC2(hcom, &ModemStat), "GetCommModemStatus failed\n");
	FUNC5 ((ModemStat & MS_CTS_ON) == 0, "CTS didn't react: 0x%04x,  expected 0x%04x\n",
	    ModemStat, (defaultStat & ~MS_CTS_ON));
	FUNC5(FUNC1(hcom, SETRTS), "EscapeCommFunction failed to clear RTS\n");
	FUNC5(FUNC2(hcom, &ModemStat), "GetCommModemStatus failed\n");
	FUNC5 (ModemStat ==  defaultStat, "Failed to restore CTS: 0x%04x, expected 0x%04x\n",
	    ModemStat, defaultStat);
    }
    else
    {
	FUNC5(FUNC1(hcom, SETRTS), "EscapeCommFunction failed to set RTS\n");
	FUNC5(FUNC2(hcom, &ModemStat), "GetCommModemStatus failed\n");
	FUNC5 ((ModemStat & MS_CTS_ON) == MS_CTS_ON,
            "CTS didn't react: 0x%04x,  expected 0x%04x\n",
	    ModemStat, (defaultStat | MS_CTS_ON));
	FUNC5(FUNC1(hcom, CLRRTS), "EscapeCommFunction failed to clear RTS\n");
	FUNC5(FUNC2(hcom, &ModemStat), "GetCommModemStatus failed\n");
	FUNC5 (ModemStat ==  defaultStat, "Failed to restore CTS: 0x%04x, expected 0x%04x\n",
	    ModemStat, defaultStat);
    }

    FUNC0(hcom);
}