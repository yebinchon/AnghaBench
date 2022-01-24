#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  request; } ;
struct TYPE_5__ {TYPE_1__ base; } ;
typedef  int /*<<< orphan*/ * LPWSTR ;
typedef  TYPE_2__ HttpProtocol ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ ERROR_INSUFFICIENT_BUFFER ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static LPWSTR FUNC5(HttpProtocol *This, DWORD option)
{
    LPWSTR ret = NULL;
    DWORD len = 0;
    BOOL res;

    res = FUNC1(This->base.request, option, NULL, &len, NULL);
    if (!res && FUNC0() == ERROR_INSUFFICIENT_BUFFER) {
        ret = FUNC3(len);
        res = FUNC1(This->base.request, option, ret, &len, NULL);
    }
    if(!res) {
        FUNC2("HttpQueryInfoW(%d) failed: %08x\n", option, FUNC0());
        FUNC4(ret);
        return NULL;
    }

    return ret;
}