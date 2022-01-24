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
typedef  char WCHAR ;
typedef  scalar_t__ LONG ;

/* Variables and functions */
 scalar_t__ ERROR_INVALID_PARAMETER ; 
 int /*<<< orphan*/  KEY_ALL_ACCESS ; 
 int /*<<< orphan*/  SHREGSET_FORCE_HKCU ; 
 int /*<<< orphan*/  FUNC0 (int,char*,scalar_t__) ; 
 scalar_t__ FUNC1 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void FUNC3(void)
{
    static const WCHAR subkeyW[] = {'s','u','b','k','e','y',0};
    LONG ret;

    if (!&pSHRegCreateUSKeyW)
    {
        FUNC2("SHRegCreateUSKeyW not available\n");
        return;
    }

    ret = FUNC1(subkeyW, KEY_ALL_ACCESS, NULL, NULL, SHREGSET_FORCE_HKCU);
    FUNC0(ret == ERROR_INVALID_PARAMETER, "got %d\n", ret);
}