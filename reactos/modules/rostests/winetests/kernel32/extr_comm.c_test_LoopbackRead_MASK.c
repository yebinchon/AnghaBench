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
typedef  int /*<<< orphan*/  tbuf ;
typedef  int /*<<< orphan*/  rbuf ;
struct TYPE_8__ {int ReadTotalTimeoutConstant; } ;
struct TYPE_7__ {int BaudRate; int ByteSize; void* StopBits; void* fDtrControl; void* fRtsControl; void* Parity; } ;
typedef  scalar_t__ HANDLE ;
typedef  int DWORD ;
typedef  TYPE_1__ DCB ;
typedef  TYPE_2__ COMMTIMEOUTS ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 void* DTR_CONTROL_ENABLE ; 
 int EV_RXCHAR ; 
 int EV_TXEMPTY ; 
 int /*<<< orphan*/  FALSE ; 
 int FASTBAUD ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,TYPE_1__*) ; 
 int FUNC2 () ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 void* NOPARITY ; 
 void* ONESTOPBIT ; 
 void* RTS_CONTROL_ENABLE ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,char*,int,int*,int /*<<< orphan*/ *) ; 
 int SLOWBAUD ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,TYPE_2__*) ; 
 int TIMEDELTA ; 
 int TIMEOUT ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,char*,int,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  loopback_txd_rxd ; 
 int /*<<< orphan*/  FUNC10 (int,char*,...) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 

__attribute__((used)) static void FUNC13(void)
{
    HANDLE hcom;
    DCB dcb;
    COMMTIMEOUTS timeouts;
    char rbuf[32];
    DWORD before, after, diff, read, read1, written, evtmask=0, i;
    BOOL res;
    char tbuf[]="test_LoopbackRead";

    if (!loopback_txd_rxd) return;

    hcom = FUNC11(FALSE);
    if (hcom == INVALID_HANDLE_VALUE) return;

    FUNC12("Starting test_LoopbackRead\n");
    FUNC10(FUNC1(hcom, &dcb), "GetCommState failed\n");
    dcb.BaudRate = FASTBAUD;
    dcb.ByteSize = 8;
    dcb.Parity = NOPARITY;
    dcb.fRtsControl=RTS_CONTROL_ENABLE;
    dcb.fDtrControl=DTR_CONTROL_ENABLE;
    dcb.StopBits = ONESTOPBIT;
    FUNC10(FUNC5(hcom, &dcb), "SetCommState failed\n");

    FUNC9( &timeouts, sizeof(timeouts));
    timeouts.ReadTotalTimeoutConstant = TIMEOUT;
    FUNC10(FUNC6(hcom, &timeouts),"SetCommTimeouts failed\n");

    FUNC10(FUNC4(hcom, EV_TXEMPTY), "SetCommMask failed\n");

    before = FUNC2();
    FUNC10(FUNC8(hcom,tbuf,sizeof(tbuf),&written, NULL), "WriteFile failed\n");
    after = FUNC2();
    FUNC10(written == sizeof(tbuf),"WriteFile %d bytes written\n", written);
    diff = after -before;

    /* make sure all bytes are written, so Readfile will succeed in one call*/
    FUNC10(FUNC7(hcom, &evtmask, NULL), "WaitCommEvent failed\n");
    before = FUNC2();
    FUNC10(evtmask == EV_TXEMPTY,
                 "WaitCommEvent: Unexpected EvtMask 0x%08x, expected 0x%08x\n",
		 evtmask, EV_TXEMPTY);
    FUNC12("Write %d ms WaitCommEvent EV_TXEMPTY %d ms\n", diff, before- after);

    read=0;
    FUNC10(FUNC3(hcom, rbuf, sizeof(rbuf), &read, NULL), "Readfile failed\n");
    FUNC10(read == sizeof(tbuf),"ReadFile read %d bytes, expected \"%s\"\n", read,rbuf);

    /* Now do the same with a slower Baud rate.
       As we request more characters than written, we will hit the timeout
    */

    FUNC10(FUNC1(hcom, &dcb), "GetCommState failed\n");
    dcb.BaudRate = 9600;
    dcb.ByteSize = 8;
    dcb.Parity = NOPARITY;
    dcb.fRtsControl=RTS_CONTROL_ENABLE;
    dcb.fDtrControl=DTR_CONTROL_ENABLE;
    dcb.StopBits = ONESTOPBIT;
    FUNC10(FUNC5(hcom, &dcb), "SetCommState failed\n");

    FUNC10(FUNC4(hcom, EV_RXCHAR), "SetCommMask failed\n");
    FUNC10(FUNC8(hcom,tbuf,sizeof(tbuf),&written, NULL), "WriteFile failed\n");
    FUNC10(written == sizeof(tbuf),"WriteFile %d bytes written\n", written);

    FUNC12("WaitCommEventEV_RXCHAR\n");
    FUNC10(FUNC7(hcom, &evtmask, NULL), "WaitCommEvent failed\n");
    FUNC10(evtmask == EV_RXCHAR, "WaitCommEvent: Unexpected EvtMask 0x%08x, expected 0x%08x\n",
       evtmask, EV_RXCHAR);

    before = FUNC2();
    res = FUNC3(hcom, rbuf, sizeof(rbuf), &read, NULL);
    after = FUNC2();
    FUNC10(res, "Readfile failed\n");
    FUNC10(read == sizeof(tbuf),"ReadFile read %d bytes\n", read);
    diff = after - before;
    FUNC12("Readfile for %d chars took %d ms\n", read, diff);
    FUNC10( (diff > TIMEOUT - TIMEDELTA) && (diff < TIMEOUT + TIMEDELTA),
	"Timedout Wait took %d ms, expected around %d\n", diff, TIMEOUT);

    /* now do a plain read with slow speed
     * This will result in several low level reads and a timeout to happen
     */
    dcb.BaudRate = SLOWBAUD;
    FUNC10(FUNC5(hcom, &dcb), "SetCommState failed\n");
    FUNC10(FUNC8(hcom,tbuf,sizeof(tbuf),&written, NULL), "WriteFile failed\n");
    before = FUNC2();
    read = 0;
    read1 =0;
    i=0;
    do 
    {
	res = FUNC3(hcom, rbuf+read, sizeof(rbuf)-read, &read1, NULL);
	FUNC10(res, "Readfile failed\n");
	read += read1;
	i++;
    }
    while ((read < sizeof(tbuf)) && (i <10));
    after =  FUNC2();
    FUNC10( read == sizeof(tbuf),"ReadFile read %d bytes\n", read);
    FUNC12("Plain Read for %d char at %d baud took %d ms\n", read, SLOWBAUD, after-before);

    FUNC0(hcom);
}