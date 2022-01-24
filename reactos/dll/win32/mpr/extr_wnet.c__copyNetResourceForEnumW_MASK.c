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
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_4__ {void* lpRemoteName; int /*<<< orphan*/ * lpProvider; int /*<<< orphan*/  lpComment; int /*<<< orphan*/  lpLocalName; } ;
typedef  int /*<<< orphan*/  NETRESOURCEW ;
typedef  TYPE_1__* LPNETRESOURCEW ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC2 (void*,void*) ; 
 int FUNC3 (void*) ; 

__attribute__((used)) static LPNETRESOURCEW FUNC4(LPNETRESOURCEW lpNet)
{
    LPNETRESOURCEW ret;

    if (lpNet)
    {
        ret = FUNC1(FUNC0(), 0, sizeof(NETRESOURCEW));
        if (ret)
        {
            size_t len;

            *ret = *lpNet;
            ret->lpLocalName = ret->lpComment = *(ret->lpProvider = NULL);
            if (lpNet->lpRemoteName)
            {
                len = FUNC3(lpNet->lpRemoteName) + 1;
                ret->lpRemoteName = FUNC1(FUNC0(), 0, len * sizeof(WCHAR));
                if (ret->lpRemoteName)
                    FUNC2(ret->lpRemoteName, lpNet->lpRemoteName);
            }
        }
    }
    else
        ret = NULL;
    return ret;
}