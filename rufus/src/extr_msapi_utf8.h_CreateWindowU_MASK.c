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
typedef  int /*<<< orphan*/  LPVOID ;
typedef  int /*<<< orphan*/ * HWND ;
typedef  int /*<<< orphan*/  HMENU ;
typedef  int /*<<< orphan*/  HINSTANCE ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR_INVALID_DATA ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  wlpClassName ; 
 int /*<<< orphan*/  wlpWindowName ; 

__attribute__((used)) static __inline HWND FUNC5(char* lpClassName, char* lpWindowName,
	DWORD dwStyle, int x, int y, int nWidth, int nHeight, HWND hWndParent,
	HMENU hMenu, HINSTANCE hInstance, LPVOID lpParam)
{
	HWND ret = NULL;
	DWORD err = ERROR_INVALID_DATA;
	FUNC3(lpClassName);
	FUNC3(lpWindowName);
	ret = FUNC0(wlpClassName, wlpWindowName, dwStyle, x, y, nWidth, nHeight, hWndParent, hMenu, hInstance, lpParam);
	err = FUNC1();
	FUNC4(lpClassName);
	FUNC4(lpWindowName);
	FUNC2(err);
	return ret;
}