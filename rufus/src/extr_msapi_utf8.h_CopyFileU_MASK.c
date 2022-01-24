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
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR_INVALID_DATA ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 int /*<<< orphan*/  wlpExistingFileName ; 
 int /*<<< orphan*/  wlpNewFileName ; 

__attribute__((used)) static __inline BOOL FUNC5(const char* lpExistingFileName, const char* lpNewFileName, BOOL bFailIfExists)
{
	BOOL ret = FALSE;
	DWORD err = ERROR_INVALID_DATA;
	FUNC3(lpExistingFileName);
	FUNC3(lpNewFileName);
	ret = FUNC0(wlpExistingFileName, wlpNewFileName, bFailIfExists);
	err = FUNC1();
	FUNC4(lpExistingFileName);
	FUNC4(lpNewFileName);
	FUNC2(err);
	return ret;
}