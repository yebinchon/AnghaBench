
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int dcb ;
struct TYPE_4__ {scalar_t__ fRtsControl; } ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;
typedef TYPE_1__ DCB ;


 int CLRRTS ;
 int CloseHandle (scalar_t__) ;
 int EscapeCommFunction (scalar_t__,int ) ;
 int FALSE ;
 int GetCommModemStatus (scalar_t__,int*) ;
 int GetCommState (scalar_t__,TYPE_1__*) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int MS_CTS_ON ;
 int MS_DSR_ON ;
 int MS_RING_ON ;
 int MS_RLSD_ON ;
 scalar_t__ RTS_CONTROL_HANDSHAKE ;
 int SETRTS ;
 int loopback_rts_cts ;
 int memset (TYPE_1__*,int ,int) ;
 int ok (int,char*,...) ;
 scalar_t__ test_OpenComm (int ) ;
 int trace (char*) ;

__attribute__((used)) static void test_LoopbackCtsRts(void)
{
    HANDLE hcom;
    DWORD ModemStat = 0, defaultStat = 0;
    DCB dcb;

    if (!loopback_rts_cts) return;

    hcom = test_OpenComm(FALSE);
    if (hcom == INVALID_HANDLE_VALUE) return;

    memset (&dcb, 0, sizeof (dcb));
    ok(GetCommState(hcom, &dcb), "GetCommState failed\n");
    if (dcb.fRtsControl == RTS_CONTROL_HANDSHAKE)
    {
 trace("RTS_CONTROL_HANDSHAKE is set, so don't manipulate RTS\n");
 CloseHandle(hcom);
 return;
    }
    ok(GetCommModemStatus(hcom, &defaultStat), "GetCommModemStatus failed\n");

    defaultStat &= MS_CTS_ON|MS_DSR_ON|MS_RING_ON|MS_RLSD_ON;
    if(defaultStat & MS_CTS_ON)
    {
 ok(EscapeCommFunction(hcom, CLRRTS), "EscapeCommFunction failed to clear RTS\n");
 ok(GetCommModemStatus(hcom, &ModemStat), "GetCommModemStatus failed\n");
 ok ((ModemStat & MS_CTS_ON) == 0, "CTS didn't react: 0x%04x,  expected 0x%04x\n",
     ModemStat, (defaultStat & ~MS_CTS_ON));
 ok(EscapeCommFunction(hcom, SETRTS), "EscapeCommFunction failed to clear RTS\n");
 ok(GetCommModemStatus(hcom, &ModemStat), "GetCommModemStatus failed\n");
 ok (ModemStat == defaultStat, "Failed to restore CTS: 0x%04x, expected 0x%04x\n",
     ModemStat, defaultStat);
    }
    else
    {
 ok(EscapeCommFunction(hcom, SETRTS), "EscapeCommFunction failed to set RTS\n");
 ok(GetCommModemStatus(hcom, &ModemStat), "GetCommModemStatus failed\n");
 ok ((ModemStat & MS_CTS_ON) == MS_CTS_ON,
            "CTS didn't react: 0x%04x,  expected 0x%04x\n",
     ModemStat, (defaultStat | MS_CTS_ON));
 ok(EscapeCommFunction(hcom, CLRRTS), "EscapeCommFunction failed to clear RTS\n");
 ok(GetCommModemStatus(hcom, &ModemStat), "GetCommModemStatus failed\n");
 ok (ModemStat == defaultStat, "Failed to restore CTS: 0x%04x, expected 0x%04x\n",
     ModemStat, defaultStat);
    }

    CloseHandle(hcom);
}
