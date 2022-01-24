#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  timeouts ;
typedef  int /*<<< orphan*/  rbuf ;
struct TYPE_8__ {int ReadTotalTimeoutConstant; } ;
struct TYPE_7__ {int ByteSize; int /*<<< orphan*/  StopBits; int /*<<< orphan*/  fDtrControl; int /*<<< orphan*/  fRtsControl; int /*<<< orphan*/  Parity; int /*<<< orphan*/  BaudRate; } ;
typedef  scalar_t__ HANDLE ;
typedef  int DWORD ;
typedef  TYPE_1__ DCB ;
typedef  TYPE_2__ COMMTIMEOUTS ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  DTR_CONTROL_ENABLE ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FASTBAUD ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,TYPE_1__*) ; 
 int FUNC2 () ; 
 int FUNC3 () ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  NOPARITY ; 
 int /*<<< orphan*/  ONESTOPBIT ; 
 int /*<<< orphan*/  RTS_CONTROL_ENABLE ; 
 scalar_t__ FUNC4 (scalar_t__,char*,int,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int TIMEOUT ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC9 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(void)
{
    HANDLE hcom;
    DCB dcb;
    COMMTIMEOUTS timeouts;
    char rbuf[32];
    DWORD before, after, read, timediff, LastError;
    BOOL res;

    hcom = FUNC11(FALSE);
    if (hcom == INVALID_HANDLE_VALUE) return;

    FUNC10(hcom);

    FUNC9(FUNC1(hcom, &dcb), "GetCommState failed\n");
    dcb.BaudRate = FASTBAUD;
    dcb.ByteSize = 8;
    dcb.Parity = NOPARITY;
    dcb.fRtsControl=RTS_CONTROL_ENABLE;
    dcb.fDtrControl=DTR_CONTROL_ENABLE;
    dcb.StopBits = ONESTOPBIT;
    FUNC9(FUNC5(hcom, &dcb), "SetCommState failed\n");

    FUNC8( &timeouts, sizeof(timeouts));
    timeouts.ReadTotalTimeoutConstant = TIMEOUT;
    FUNC9(FUNC6(hcom, &timeouts),"SetCommTimeouts failed\n");

    before = FUNC3();
    FUNC7(0xdeadbeef);
    res = FUNC4(hcom, rbuf, sizeof(rbuf), &read, NULL);
    LastError = FUNC2();
    after = FUNC3();
    FUNC9( res == TRUE, "A timed-out read should return TRUE\n");
    FUNC9( LastError == 0xdeadbeef, "err=%d\n", LastError);
    timediff = after - before;
    FUNC9( timediff > TIMEOUT>>2 && timediff < TIMEOUT *2,
	"Unexpected TimeOut %d, expected %d\n", timediff, TIMEOUT);

    FUNC0(hcom);
}