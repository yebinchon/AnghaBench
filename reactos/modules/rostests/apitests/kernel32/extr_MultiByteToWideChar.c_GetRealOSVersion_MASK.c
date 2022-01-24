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
typedef  int /*<<< orphan*/  osvi ;
struct TYPE_4__ {int dwOSVersionInfoSize; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ RTL_OSVERSIONINFOW ;
typedef  scalar_t__ (* RTLGETVERSION ) (TYPE_1__*) ;
typedef  scalar_t__ HINSTANCE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,char*) ; 
 scalar_t__ FUNC2 (char*) ; 
 scalar_t__ STATUS_SUCCESS ; 

__attribute__((used)) static RTL_OSVERSIONINFOW *FUNC3(void)
{
    static RTL_OSVERSIONINFOW osvi = { 0 };
    RTL_OSVERSIONINFOW *ptr = NULL;
    HINSTANCE hNTDLL = FUNC2(L"ntdll.dll");
    RTLGETVERSION fn;
    if (hNTDLL)
    {
        fn = (RTLGETVERSION)FUNC1(hNTDLL, "RtlGetVersion");
        if (fn)
        {
            osvi.dwOSVersionInfoSize = sizeof(osvi);
            if (fn(&osvi) == STATUS_SUCCESS)
            {
                ptr = &osvi;
            }
        }
        FUNC0(hNTDLL);
    }
    return ptr;
}