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
typedef  int /*<<< orphan*/  LPSIZE ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_INVALID_DATA ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 int /*<<< orphan*/ * wlpString ; 

__attribute__((used)) static __inline BOOL FUNC6(HDC hdc, const char* lpString, LPSIZE lpSize)
{
	BOOL ret = FALSE;
	DWORD err = ERROR_INVALID_DATA;
	FUNC3(lpString);
	if (wlpString == NULL)
		return FALSE;
	ret = FUNC1(hdc, wlpString, (int)FUNC4(wlpString), lpSize);
	err = FUNC0();
	FUNC5(lpString);
	FUNC2(err);
	return ret;
}