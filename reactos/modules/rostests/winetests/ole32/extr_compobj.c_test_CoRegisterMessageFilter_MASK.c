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
typedef  int /*<<< orphan*/  IMessageFilter ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  COINIT_APARTMENTTHREADED ; 
 int /*<<< orphan*/  COINIT_MULTITHREADED ; 
 scalar_t__ CO_E_NOT_SUPPORTED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  MessageFilter ; 
 int /*<<< orphan*/  FUNC2 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(void)
{
    HRESULT hr;
    IMessageFilter *prev_filter;

    hr = FUNC0(&MessageFilter, &prev_filter);
    FUNC2(hr == CO_E_NOT_SUPPORTED,
        "CoRegisterMessageFilter should have failed with CO_E_NOT_SUPPORTED instead of 0x%08x\n",
        hr);

    FUNC4(NULL, COINIT_MULTITHREADED);
    prev_filter = (IMessageFilter *)0xdeadbeef;
    hr = FUNC0(&MessageFilter, &prev_filter);
    FUNC2(hr == CO_E_NOT_SUPPORTED,
        "CoRegisterMessageFilter should have failed with CO_E_NOT_SUPPORTED instead of 0x%08x\n",
        hr);
    FUNC2(prev_filter == (IMessageFilter *)0xdeadbeef,
        "prev_filter should have been set to %p\n", prev_filter);
    FUNC1();

    FUNC4(NULL, COINIT_APARTMENTTHREADED);

    hr = FUNC0(NULL, NULL);
    FUNC3(hr, "CoRegisterMessageFilter");

    prev_filter = (IMessageFilter *)0xdeadbeef;
    hr = FUNC0(NULL, &prev_filter);
    FUNC3(hr, "CoRegisterMessageFilter");
    FUNC2(prev_filter == NULL, "prev_filter should have been set to NULL instead of %p\n", prev_filter);

    hr = FUNC0(&MessageFilter, &prev_filter);
    FUNC3(hr, "CoRegisterMessageFilter");
    FUNC2(prev_filter == NULL, "prev_filter should have been set to NULL instead of %p\n", prev_filter);

    hr = FUNC0(NULL, NULL);
    FUNC3(hr, "CoRegisterMessageFilter");

    FUNC1();
}