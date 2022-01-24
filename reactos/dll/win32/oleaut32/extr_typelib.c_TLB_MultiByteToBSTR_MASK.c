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
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/ * BSTR ;

/* Variables and functions */
 int /*<<< orphan*/  CP_ACP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static BSTR FUNC2(const char *ptr)
{
    DWORD len;
    BSTR ret;

    len = FUNC0(CP_ACP, 0, ptr, -1, NULL, 0);
    ret = FUNC1(NULL, len - 1);
    if (!ret) return ret;
    FUNC0(CP_ACP, 0, ptr, -1, ret, len);
    return ret;
}