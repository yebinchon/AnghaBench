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
typedef  int /*<<< orphan*/  LPCITEMIDLIST ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_INVALID_DATA ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  MAX_PATH ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  wpszPath ; 

__attribute__((used)) static __inline BOOL FUNC6(LPCITEMIDLIST pidl, char* pszPath)
{
	BOOL ret = FALSE;
	DWORD err = ERROR_INVALID_DATA;
	// coverity[returned_null]
	FUNC3(pszPath, MAX_PATH);
	ret = FUNC1(pidl, wpszPath);
	err = FUNC0();
	if ((ret) && (FUNC4(wpszPath, pszPath, MAX_PATH) == 0)) {
		err = FUNC0();
		ret = FALSE;
	}
	FUNC5(pszPath);
	FUNC2(err);
	return ret;
}