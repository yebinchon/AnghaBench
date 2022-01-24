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
typedef  char wchar_t ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_INVALID_DATA ; 
 int /*<<< orphan*/  ERROR_OUTOFMEMORY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (char*) ; 
 char* FUNC7 (char*) ; 

__attribute__((used)) static __inline int FUNC8(HWND hWnd)
{
	int ret = 0;
	DWORD err = ERROR_INVALID_DATA;
	wchar_t* wbuf = NULL;
	char* buf = NULL;

	ret = FUNC1(hWnd);
	err = FUNC0();
	if (ret == 0) goto out;
	wbuf = FUNC4(ret, sizeof(wchar_t));
	err = FUNC0();
	if (wbuf == NULL) {
		err = ERROR_OUTOFMEMORY; ret = 0; goto out;
	}
	ret = FUNC2(hWnd, wbuf, ret);
	err = FUNC0();
	if (ret == 0) goto out;
	buf = FUNC7(wbuf);
	err = FUNC0();
	if (buf == NULL) {
		err = ERROR_OUTOFMEMORY; ret = 0; goto out;
	}
	ret = (int)FUNC6(buf) + 2;	// GetDlgItemText seems to add a character
	err = FUNC0();
out:
	FUNC5(wbuf);
	FUNC5(buf);
	FUNC3(err);
	return ret;
}