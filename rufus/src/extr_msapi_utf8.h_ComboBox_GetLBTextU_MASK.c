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
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  WPARAM ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int CB_ERR ; 
 int /*<<< orphan*/  CB_GETLBTEXT ; 
 int /*<<< orphan*/  CB_GETLBTEXTLEN ; 
 int /*<<< orphan*/  ERROR_INVALID_DATA ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static __inline int FUNC6(HWND hCtrl, int index, char* lpString)
{
	int size;
	DWORD err = ERROR_INVALID_DATA;
	wchar_t* wlpString;
	if (lpString == NULL)
		return CB_ERR;
	size = (int)FUNC1(hCtrl, CB_GETLBTEXTLEN, (WPARAM)index, (LPARAM)0);
	if (size < 0)
		return size;
	wlpString = (wchar_t*)FUNC3(size+1, sizeof(wchar_t));
	size = (int)FUNC1(hCtrl, CB_GETLBTEXT, (WPARAM)index, (LPARAM)wlpString);
	err = FUNC0();
	if (size > 0)
		FUNC4(wlpString, lpString, size+1);
	FUNC5(lpString);
	FUNC2(err);
	return size;
}