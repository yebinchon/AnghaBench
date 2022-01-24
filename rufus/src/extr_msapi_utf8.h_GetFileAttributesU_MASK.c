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
typedef  int DWORD ;

/* Variables and functions */
 int ERROR_INVALID_DATA ; 
 int FUNC0 (int*) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int FUNC4 (int*) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 int* wlpFileName ; 

__attribute__((used)) static __inline DWORD FUNC6(const char* lpFileName)
{
	DWORD ret = 0xFFFFFFFF, err = ERROR_INVALID_DATA;
	FUNC3(lpFileName);
	// Unlike Microsoft's version, ours doesn't fail if the string is quoted
	if ((wlpFileName[0] == L'"') && (wlpFileName[FUNC4(wlpFileName) - 1] == L'"')) {
		wlpFileName[FUNC4(wlpFileName) - 1] = 0;
		ret = FUNC0(&wlpFileName[1]);
	} else {
		ret = FUNC0(wlpFileName);
	}
	err = FUNC1();
	FUNC5(lpFileName);
	FUNC2(err);
	return ret;
}