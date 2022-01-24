#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int REFERENCE_TIME ;
typedef  int LONG ;
typedef  int /*<<< orphan*/  IReferenceClock ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 scalar_t__ E_POINTER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int*) ; 
 scalar_t__ S_FALSE ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,char const*,...) ; 

__attribute__((used)) static void FUNC3(const char * clockdesc, IReferenceClock * pClock)
{
    HRESULT hr;
    REFERENCE_TIME time1;
    REFERENCE_TIME time2;
    LONG diff;

    /* Test response from invalid (NULL) argument */
    hr = FUNC0(pClock, NULL);
    FUNC2 (hr == E_POINTER, "%s - Expected E_POINTER (0x%08x), got 0x%08x\n", clockdesc, E_POINTER, hr);

    /* Test response for valid value - try 1 */
    /* TODO: test whether Windows actually returns S_FALSE in its first invocation */
    time1 = (REFERENCE_TIME)0xdeadbeef;
    hr = FUNC0(pClock, &time1);
    FUNC2 (hr == S_FALSE || hr == S_OK, "%s - Expected S_OK or S_FALSE, got 0x%08x\n", clockdesc, hr);
    FUNC2 (time1 != 0xdeadbeef, "%s - value was NOT changed on return!\n", clockdesc);

    /* Test response for valid value - try 2 */
    time2 = (REFERENCE_TIME)0xdeadbeef;
    hr = FUNC0(pClock, &time2);
    FUNC2 (hr == S_FALSE || hr == S_OK, "%s - Expected S_OK or S_FALSE, got 0x%08x\n", clockdesc, hr);
    FUNC2 (time2 != 0xdeadbeef, "%s - value was NOT changed on return!\n", clockdesc);

    /* In case the second invocation managed to return S_FALSE, MSDN says the
       returned time is the same as the previous one. */
    FUNC2 ((hr != S_FALSE || time1 == time2), "%s - returned S_FALSE, but values not equal!\n", clockdesc);

    time1 = time2;
    FUNC1(1000); /* Sleep for at least 1 second */
    hr = FUNC0(pClock, &time2);
    /* After a 1-second sleep, there is no excuse to get S_FALSE (see TODO above) */
    FUNC2 (hr == S_OK, "%s - Expected S_OK, got 0x%08x\n", clockdesc, hr);

    /* FIXME: How much deviation should be allowed after a sleep? */
    /* 0.3% is common, and 0.4% is sometimes observed. */
    diff = time2 - time1;
    FUNC2 (9940000 <= diff && diff <= 10240000, "%s - Expected difference around 10000000, got %u\n", clockdesc, diff);

}