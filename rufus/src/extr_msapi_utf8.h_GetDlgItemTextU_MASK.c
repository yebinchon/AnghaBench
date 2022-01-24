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
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_INVALID_DATA ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  wlpString ; 

__attribute__((used)) static __inline UINT FUNC6(HWND hDlg, int nIDDlgItem, char* lpString, int nMaxCount)
{
	UINT ret = 0;
	DWORD err = ERROR_INVALID_DATA;
	// coverity[returned_null]
	FUNC3(lpString, nMaxCount);
	ret = FUNC0(hDlg, nIDDlgItem, wlpString, nMaxCount);
	err = FUNC1();
	if ((ret != 0) && ((ret = FUNC4(wlpString, lpString, nMaxCount)) == 0)) {
		err = FUNC1();
	}
	FUNC5(lpString);
	FUNC2(err);
	return ret;
}