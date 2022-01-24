#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  overlapped_w ;
typedef  int /*<<< orphan*/  overlapped ;
struct TYPE_6__ {scalar_t__ hEvent; } ;
typedef  TYPE_1__ OVERLAPPED ;
typedef  scalar_t__ HANDLE ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ ERROR_IO_PENDING ; 
 scalar_t__ EV_RXCHAR ; 
 scalar_t__ FALSE ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 (scalar_t__,TYPE_1__*,scalar_t__*,scalar_t__) ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int TIMEDELTA ; 
 int TIMEOUT ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ WAIT_OBJECT_0 ; 
 scalar_t__ FUNC7 (scalar_t__,scalar_t__*,TYPE_1__*) ; 
 scalar_t__ FUNC8 (scalar_t__,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (scalar_t__,char*,int,scalar_t__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  loopback_txd_rxd ; 
 int /*<<< orphan*/  FUNC11 (int,char*,...) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 

__attribute__((used)) static void FUNC14(void)
{
    OVERLAPPED overlapped, overlapped_w;
    HANDLE hcom, hComPortEvent, hComWriteEvent;
    DWORD before, after, after1, diff, success_wait = FALSE, success_write;
    DWORD err_wait, err_write, written, evtmask=0;

    if (!loopback_txd_rxd) return;

    hcom = FUNC12(TRUE);
    if (hcom == INVALID_HANDLE_VALUE) return;

    FUNC11(FUNC5(hcom, EV_RXCHAR), "SetCommMask failed\n");
    hComPortEvent =  FUNC1( NULL, TRUE, FALSE, NULL );
    FUNC11(hComPortEvent != 0, "CreateEvent failed\n");
    FUNC10( &overlapped, sizeof(overlapped));
    overlapped.hEvent = hComPortEvent;

    hComWriteEvent = FUNC1( NULL, TRUE, FALSE, NULL );
    FUNC11(hComWriteEvent != NULL, "CreateEvent res %d\n", FUNC2());
    FUNC10( &overlapped_w, sizeof(overlapped_w));
    overlapped_w.hEvent = hComWriteEvent;

    before = FUNC4();
    success_wait = FUNC7(hcom, &evtmask, &overlapped);
    err_wait = FUNC2();
    after = FUNC4();
    FUNC13("Success 0x%08x err %d evtmask 0x%08x\n", success_wait, err_wait, evtmask);
    FUNC11(success_wait || err_wait == ERROR_IO_PENDING, "overlapped WaitCommEvent failed\n");
    FUNC13("overlapped WaitCommEvent returned.\n");

    success_write= FUNC9(hcom, "X", 1, &written, &overlapped_w);
    err_write = FUNC2();
    FUNC11(success_write || err_write == ERROR_IO_PENDING,
       "overlapped WriteFile failed, err %d\n",
       err_write);

    if (!success_write && (err_write == ERROR_IO_PENDING)) {
      success_write = FUNC8(hComWriteEvent, TIMEOUT, TRUE);
      err_write = FUNC2();
      FUNC11(success_write == WAIT_OBJECT_0, "WaitForSingleObjectEx, res %d, err %d\n",
	 success_write, err_write);
    }
    FUNC6(TIMEOUT >>1);
    success_write = FUNC3(hcom, &overlapped_w, &written, FALSE);
    err_write = FUNC2();

    FUNC13("Write after Wait res 0x%08x err %d\n",success_write, err_write);
    FUNC11(success_write && written ==1, "Write after Wait res 0x%08x err %d\n",
       success_write, err_write);

    if (!success_wait && (err_wait == ERROR_IO_PENDING)) {
      success_wait = FUNC8(hComPortEvent, TIMEOUT, TRUE);
      err_wait = FUNC2();
      FUNC11(success_wait == WAIT_OBJECT_0, "wait hComPortEvent, res 0x%08x, err %d\n",
	 success_wait, err_wait);
    }
    success_wait = FUNC3(hcom, &overlapped, &written, FALSE);
    err_wait = FUNC2();
    after1 = FUNC4();
    FUNC13("Success 0x%08x err %d evtmask 0x%08x diff1 %d, diff2 %d\n",
	  success_wait, err_wait, evtmask, after-before, after1-before);

    FUNC11(evtmask & EV_RXCHAR, "Detect  EV_RXCHAR: 0x%08x, expected 0x%08x\n",
       evtmask, EV_RXCHAR);
    diff = after1 - before;
    FUNC11 ((diff > (TIMEOUT>>1) -TIMEDELTA) && (diff < (TIMEOUT>>1) + TIMEDELTA),
	"Unexpected time %d, expected around %d\n", diff, TIMEOUT>>1);

    FUNC0(hcom);
}