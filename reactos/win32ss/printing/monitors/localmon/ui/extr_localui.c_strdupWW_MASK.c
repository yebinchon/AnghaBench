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
typedef  scalar_t__ LPWSTR ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static LPWSTR FUNC5(LPCWSTR pPrefix, LPCWSTR pSuffix)
{
    LPWSTR  ptr;
    DWORD   len;

    len = FUNC4(pPrefix) + (pSuffix ? FUNC4(pSuffix) : 0) + 1;
    ptr = FUNC1(FUNC0(), 0, len * sizeof(WCHAR));
    if (ptr) {
        FUNC3(ptr, pPrefix);
        if (pSuffix) FUNC2(ptr, pSuffix);
    }
    return ptr;
}