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
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_INVALID_DATA ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  wlpString ; 

__attribute__((used)) static __inline int FUNC6(HWND hWnd, char* lpString, int nMaxCount)
{
	int ret = 0;
	DWORD err = ERROR_INVALID_DATA;
	// Handle the empty string as GetWindowTextW() returns 0 then
	if ((lpString != NULL) && (nMaxCount > 0))
		lpString[0] = 0;
	// coverity[returned_null]
	FUNC3(lpString, nMaxCount);
	ret = FUNC1(hWnd, wlpString, nMaxCount);
	err = FUNC0();
	// coverity[var_deref_model]
	if ( (ret != 0) && ((ret = FUNC4(wlpString, lpString, nMaxCount)) == 0) ) {
		err = FUNC0();
	}
	FUNC5(lpString);
	FUNC2(err);
	return ret;
}