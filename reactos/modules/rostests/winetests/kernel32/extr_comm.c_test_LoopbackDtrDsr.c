
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ fDtrControl; } ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;
typedef TYPE_1__ DCB ;


 int CLRDTR ;
 int CloseHandle (scalar_t__) ;
 scalar_t__ DTR_CONTROL_DISABLE ;
 int EscapeCommFunction (scalar_t__,int ) ;
 int FALSE ;
 int GetCommModemStatus (scalar_t__,int*) ;
 int GetCommState (scalar_t__,TYPE_1__*) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int MS_CTS_ON ;
 int MS_DSR_ON ;
 int MS_RING_ON ;
 int MS_RLSD_ON ;
 int SETDTR ;
 int loopback_dtr_dsr ;
 int ok (int,char*,...) ;
 scalar_t__ test_OpenComm (int ) ;
 int trace (char*) ;

__attribute__((used)) static void test_LoopbackDtrDsr(void)
{
    HANDLE hcom;
    DWORD ModemStat = 0, defaultStat = 0;
    DCB dcb;

    if (!loopback_dtr_dsr) return;

    hcom = test_OpenComm(FALSE);
    if (hcom == INVALID_HANDLE_VALUE) return;

    ok(GetCommState(hcom, &dcb), "GetCommState failed\n");
    if (dcb.fDtrControl == DTR_CONTROL_DISABLE)
    {
 trace("DTR_CONTROL_HANDSHAKE is set, so don't manipulate DTR\n");
        CloseHandle(hcom);
 return;
    }
    ok(GetCommModemStatus(hcom, &defaultStat), "GetCommModemStatus failed\n");

    defaultStat &= MS_CTS_ON|MS_DSR_ON|MS_RING_ON|MS_RLSD_ON;
    if(defaultStat & MS_DSR_ON)
    {
 ok(EscapeCommFunction(hcom, CLRDTR), "EscapeCommFunction failed to clear DTR\n");
 ok(GetCommModemStatus(hcom, &ModemStat), "GetCommModemStatus failed\n");
 ok ((ModemStat & MS_DSR_ON) == 0, "CTS didn't react: 0x%04x,  expected 0x%04x\n",
     ModemStat, (defaultStat & ~MS_DSR_ON));
 ok(EscapeCommFunction(hcom, SETDTR), "EscapeCommFunction failed to clear DTR\n");
 ok(GetCommModemStatus(hcom, &ModemStat), "GetCommModemStatus failed\n");
 ok (ModemStat == defaultStat, "Failed to restore DSR: 0x%04x, expected 0x%04x\n",
     ModemStat, defaultStat);
    }
    else
    {
 ok(EscapeCommFunction(hcom, SETDTR), "EscapeCommFunction failed to set DTR\n");
 ok(GetCommModemStatus(hcom, &ModemStat), "GetCommModemStatus failed\n");
 ok ((ModemStat & MS_DSR_ON) == MS_DSR_ON,
            "CTS didn't react: 0x%04x,expected 0x%04x\n",
     ModemStat, (defaultStat | MS_DSR_ON));
 ok(EscapeCommFunction(hcom, CLRDTR), "EscapeCommFunction failed to clear DTR\n");
 ok(GetCommModemStatus(hcom, &ModemStat), "GetCommModemStatus failed\n");
 ok (ModemStat == defaultStat, "Failed to restore DSR: 0x%04x, expected 0x%04x\n",
     ModemStat, defaultStat);
    }

    CloseHandle(hcom);
}
