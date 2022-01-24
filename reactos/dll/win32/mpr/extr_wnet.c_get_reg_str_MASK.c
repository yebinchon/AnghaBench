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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ REG_SZ ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *,scalar_t__*) ; 

__attribute__((used)) static WCHAR *FUNC3(HKEY hkey, const WCHAR *value, DWORD *len)
{
    DWORD type;
    WCHAR *ret = NULL;

    if (!FUNC2(hkey, value, NULL, &type, NULL, len) && type == REG_SZ)
    {
        if (!(ret = FUNC1(FUNC0(), 0, *len))) return NULL;
        FUNC2(hkey, value, 0, 0, (BYTE *)ret, len);
    }

    return ret;
}