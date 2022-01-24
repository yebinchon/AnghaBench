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
typedef  int /*<<< orphan*/  STRRET ;
typedef  int /*<<< orphan*/  LPWSTR ;
typedef  int /*<<< orphan*/  LPSHELLFOLDER ;
typedef  int /*<<< orphan*/  LPCITEMIDLIST ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MAX_PATH ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static BOOL FUNC5(LPSHELLFOLDER lpsf, LPCITEMIDLIST lpi, DWORD dwFlags, LPWSTR lpFriendlyName)
{
	BOOL   bSuccess=TRUE;
	STRRET str;

	FUNC3("%p %p %x %p\n", lpsf, lpi, dwFlags, lpFriendlyName);
	if (FUNC1(FUNC0(lpsf, lpi, dwFlags, &str)))
          bSuccess = FUNC2(lpFriendlyName, MAX_PATH, &str, lpi);
	else
	  bSuccess = FALSE;

	FUNC3("-- %s\n", FUNC4(lpFriendlyName));
	return bSuccess;
}