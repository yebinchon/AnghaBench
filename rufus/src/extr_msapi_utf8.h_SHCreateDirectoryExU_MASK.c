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
typedef  int /*<<< orphan*/  SECURITY_ATTRIBUTES ;
typedef  int /*<<< orphan*/  HWND ;
typedef  void* DWORD ;

/* Variables and functions */
 void* ERROR_INVALID_DATA ; 
 void* FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 int /*<<< orphan*/  wpszPath ; 

__attribute__((used)) static __inline int FUNC5(HWND hwnd, const char* pszPath, SECURITY_ATTRIBUTES *psa)
{
	int ret = ERROR_INVALID_DATA;
	DWORD err = ERROR_INVALID_DATA;
	FUNC3(pszPath);
	ret = FUNC1(hwnd, wpszPath, psa);
	err = FUNC0();
	FUNC4(pszPath);
	FUNC2(err);
	return ret;
}