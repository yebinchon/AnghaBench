
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int timeouts ;
typedef int tbuf ;
typedef int rbuf ;
struct TYPE_8__ {int ReadTotalTimeoutConstant; } ;
struct TYPE_7__ {int BaudRate; int ByteSize; void* StopBits; void* fDtrControl; void* fRtsControl; void* Parity; } ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;
typedef TYPE_1__ DCB ;
typedef TYPE_2__ COMMTIMEOUTS ;
typedef int BOOL ;


 int CloseHandle (scalar_t__) ;
 void* DTR_CONTROL_ENABLE ;
 int EV_RXCHAR ;
 int EV_TXEMPTY ;
 int FALSE ;
 int FASTBAUD ;
 int GetCommState (scalar_t__,TYPE_1__*) ;
 int GetTickCount () ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 void* NOPARITY ;
 void* ONESTOPBIT ;
 void* RTS_CONTROL_ENABLE ;
 int ReadFile (scalar_t__,char*,int,int*,int *) ;
 int SLOWBAUD ;
 int SetCommMask (scalar_t__,int) ;
 int SetCommState (scalar_t__,TYPE_1__*) ;
 int SetCommTimeouts (scalar_t__,TYPE_2__*) ;
 int TIMEDELTA ;
 int TIMEOUT ;
 int WaitCommEvent (scalar_t__,int*,int *) ;
 int WriteFile (scalar_t__,char*,int,int*,int *) ;
 int ZeroMemory (TYPE_2__*,int) ;
 int loopback_txd_rxd ;
 int ok (int,char*,...) ;
 scalar_t__ test_OpenComm (int ) ;
 int trace (char*,...) ;

__attribute__((used)) static void test_LoopbackRead(void)
{
    HANDLE hcom;
    DCB dcb;
    COMMTIMEOUTS timeouts;
    char rbuf[32];
    DWORD before, after, diff, read, read1, written, evtmask=0, i;
    BOOL res;
    char tbuf[]="test_LoopbackRead";

    if (!loopback_txd_rxd) return;

    hcom = test_OpenComm(FALSE);
    if (hcom == INVALID_HANDLE_VALUE) return;

    trace("Starting test_LoopbackRead\n");
    ok(GetCommState(hcom, &dcb), "GetCommState failed\n");
    dcb.BaudRate = FASTBAUD;
    dcb.ByteSize = 8;
    dcb.Parity = NOPARITY;
    dcb.fRtsControl=RTS_CONTROL_ENABLE;
    dcb.fDtrControl=DTR_CONTROL_ENABLE;
    dcb.StopBits = ONESTOPBIT;
    ok(SetCommState(hcom, &dcb), "SetCommState failed\n");

    ZeroMemory( &timeouts, sizeof(timeouts));
    timeouts.ReadTotalTimeoutConstant = TIMEOUT;
    ok(SetCommTimeouts(hcom, &timeouts),"SetCommTimeouts failed\n");

    ok(SetCommMask(hcom, EV_TXEMPTY), "SetCommMask failed\n");

    before = GetTickCount();
    ok(WriteFile(hcom,tbuf,sizeof(tbuf),&written, ((void*)0)), "WriteFile failed\n");
    after = GetTickCount();
    ok(written == sizeof(tbuf),"WriteFile %d bytes written\n", written);
    diff = after -before;


    ok(WaitCommEvent(hcom, &evtmask, ((void*)0)), "WaitCommEvent failed\n");
    before = GetTickCount();
    ok(evtmask == EV_TXEMPTY,
                 "WaitCommEvent: Unexpected EvtMask 0x%08x, expected 0x%08x\n",
   evtmask, EV_TXEMPTY);
    trace("Write %d ms WaitCommEvent EV_TXEMPTY %d ms\n", diff, before- after);

    read=0;
    ok(ReadFile(hcom, rbuf, sizeof(rbuf), &read, ((void*)0)), "Readfile failed\n");
    ok(read == sizeof(tbuf),"ReadFile read %d bytes, expected \"%s\"\n", read,rbuf);





    ok(GetCommState(hcom, &dcb), "GetCommState failed\n");
    dcb.BaudRate = 9600;
    dcb.ByteSize = 8;
    dcb.Parity = NOPARITY;
    dcb.fRtsControl=RTS_CONTROL_ENABLE;
    dcb.fDtrControl=DTR_CONTROL_ENABLE;
    dcb.StopBits = ONESTOPBIT;
    ok(SetCommState(hcom, &dcb), "SetCommState failed\n");

    ok(SetCommMask(hcom, EV_RXCHAR), "SetCommMask failed\n");
    ok(WriteFile(hcom,tbuf,sizeof(tbuf),&written, ((void*)0)), "WriteFile failed\n");
    ok(written == sizeof(tbuf),"WriteFile %d bytes written\n", written);

    trace("WaitCommEventEV_RXCHAR\n");
    ok(WaitCommEvent(hcom, &evtmask, ((void*)0)), "WaitCommEvent failed\n");
    ok(evtmask == EV_RXCHAR, "WaitCommEvent: Unexpected EvtMask 0x%08x, expected 0x%08x\n",
       evtmask, EV_RXCHAR);

    before = GetTickCount();
    res = ReadFile(hcom, rbuf, sizeof(rbuf), &read, ((void*)0));
    after = GetTickCount();
    ok(res, "Readfile failed\n");
    ok(read == sizeof(tbuf),"ReadFile read %d bytes\n", read);
    diff = after - before;
    trace("Readfile for %d chars took %d ms\n", read, diff);
    ok( (diff > TIMEOUT - TIMEDELTA) && (diff < TIMEOUT + TIMEDELTA),
 "Timedout Wait took %d ms, expected around %d\n", diff, TIMEOUT);




    dcb.BaudRate = SLOWBAUD;
    ok(SetCommState(hcom, &dcb), "SetCommState failed\n");
    ok(WriteFile(hcom,tbuf,sizeof(tbuf),&written, ((void*)0)), "WriteFile failed\n");
    before = GetTickCount();
    read = 0;
    read1 =0;
    i=0;
    do
    {
 res = ReadFile(hcom, rbuf+read, sizeof(rbuf)-read, &read1, ((void*)0));
 ok(res, "Readfile failed\n");
 read += read1;
 i++;
    }
    while ((read < sizeof(tbuf)) && (i <10));
    after = GetTickCount();
    ok( read == sizeof(tbuf),"ReadFile read %d bytes\n", read);
    trace("Plain Read for %d char at %d baud took %d ms\n", read, SLOWBAUD, after-before);

    CloseHandle(hcom);
}
