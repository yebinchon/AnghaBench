#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * lpszProxyBypass; int /*<<< orphan*/ * lpszProxy; } ;
typedef  TYPE_1__ WINHTTP_PROXY_INFO ;
typedef  int BOOL ;

/* Variables and functions */
 int ERROR_SUCCESS ; 
 int FALSE ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,int) ; 

__attribute__((used)) static BOOL FUNC6(void)
{
    WINHTTP_PROXY_INFO proxy_info;
    BOOL active = FALSE;

    FUNC2(0xdeadbeef);
    if (FUNC3(&proxy_info))
    {
        FUNC5(FUNC0() == ERROR_SUCCESS || FUNC4(FUNC0() == 0xdeadbeef) /* < win7 */,
           "got %u\n", FUNC0());
        active = (proxy_info.lpszProxy != NULL);
        if (active)
            FUNC1(proxy_info.lpszProxy);
        if (proxy_info.lpszProxyBypass != NULL)
            FUNC1(proxy_info.lpszProxyBypass);
    }
    else
       active = FALSE;

    return active;
}