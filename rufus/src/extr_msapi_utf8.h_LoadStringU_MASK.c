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
typedef  int /*<<< orphan*/  UINT ;
typedef  int /*<<< orphan*/  LPSTR ;
typedef  int /*<<< orphan*/  HINSTANCE ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_INVALID_DATA ; 
 int /*<<< orphan*/  ERROR_INVALID_PARAMETER ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wlpBuffer ; 

__attribute__((used)) static __inline int FUNC6(HINSTANCE hInstance, UINT uID, LPSTR lpBuffer, int nBufferMax)
{
	int ret;
	DWORD err = ERROR_INVALID_DATA;
	if (nBufferMax == 0) {
		// read-only pointer to resource mode is not supported
		FUNC2(ERROR_INVALID_PARAMETER);
		return 0;
	}
	// coverity[returned_null]
	FUNC3(lpBuffer, nBufferMax);
	ret = FUNC1(hInstance, uID, wlpBuffer, nBufferMax);
	err = FUNC0();
	if ((ret > 0) && ((ret = FUNC4(wlpBuffer, lpBuffer, nBufferMax)) == 0)) {
		err = FUNC0();
	}
	FUNC5(lpBuffer);
	FUNC2(err);
	return ret;
}