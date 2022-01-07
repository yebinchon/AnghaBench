
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int timeouts ;
typedef int rbuf ;
struct TYPE_8__ {int ReadTotalTimeoutConstant; } ;
struct TYPE_7__ {int ByteSize; int StopBits; int fDtrControl; int fRtsControl; int Parity; int BaudRate; } ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;
typedef TYPE_1__ DCB ;
typedef TYPE_2__ COMMTIMEOUTS ;
typedef scalar_t__ BOOL ;


 int CloseHandle (scalar_t__) ;
 int DTR_CONTROL_ENABLE ;
 int FALSE ;
 int FASTBAUD ;
 int GetCommState (scalar_t__,TYPE_1__*) ;
 int GetLastError () ;
 int GetTickCount () ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int NOPARITY ;
 int ONESTOPBIT ;
 int RTS_CONTROL_ENABLE ;
 scalar_t__ ReadFile (scalar_t__,char*,int,int*,int *) ;
 int SetCommState (scalar_t__,TYPE_1__*) ;
 int SetCommTimeouts (scalar_t__,TYPE_2__*) ;
 int SetLastError (int) ;
 int TIMEOUT ;
 scalar_t__ TRUE ;
 int ZeroMemory (TYPE_2__*,int) ;
 int ok (int,char*,...) ;
 int test_GetModemStatus (scalar_t__) ;
 scalar_t__ test_OpenComm (int ) ;

__attribute__((used)) static void test_ReadTimeOut(void)
{
    HANDLE hcom;
    DCB dcb;
    COMMTIMEOUTS timeouts;
    char rbuf[32];
    DWORD before, after, read, timediff, LastError;
    BOOL res;

    hcom = test_OpenComm(FALSE);
    if (hcom == INVALID_HANDLE_VALUE) return;

    test_GetModemStatus(hcom);

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

    before = GetTickCount();
    SetLastError(0xdeadbeef);
    res = ReadFile(hcom, rbuf, sizeof(rbuf), &read, ((void*)0));
    LastError = GetLastError();
    after = GetTickCount();
    ok( res == TRUE, "A timed-out read should return TRUE\n");
    ok( LastError == 0xdeadbeef, "err=%d\n", LastError);
    timediff = after - before;
    ok( timediff > TIMEOUT>>2 && timediff < TIMEOUT *2,
 "Unexpected TimeOut %d, expected %d\n", timediff, TIMEOUT);

    CloseHandle(hcom);
}
