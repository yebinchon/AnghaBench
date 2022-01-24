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
typedef  int /*<<< orphan*/  UINT_PTR ;
typedef  int /*<<< orphan*/  UINT ;
typedef  int /*<<< orphan*/  HMENU ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_INVALID_DATA ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 int /*<<< orphan*/  wlpNewItem ; 

__attribute__((used)) static __inline BOOL FUNC5(HMENU hMenu, UINT uPosition, UINT uFlags, UINT_PTR uIDNewItem, const char* lpNewItem)
{
	BOOL ret = FALSE;
	DWORD err = ERROR_INVALID_DATA;
	FUNC3(lpNewItem);
	ret = FUNC1(hMenu, uPosition, uFlags, uIDNewItem, wlpNewItem);
	err = FUNC0();
	FUNC4(lpNewItem);
	FUNC2(err);
	return ret;
}