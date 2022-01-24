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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  UINT ;
typedef  int /*<<< orphan*/ * LPCWSTR ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_FUNCTION_FAILED ; 
 int /*<<< orphan*/  HKEY_CURRENT_USER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int SQUASHED_GUID_SIZE ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  szUserFeatures ; 

UINT FUNC6(LPCWSTR szProduct)
{
    WCHAR squashed_pc[SQUASHED_GUID_SIZE], keypath[0x200];

    if (!FUNC3( szProduct, squashed_pc )) return ERROR_FUNCTION_FAILED;
    FUNC1("%s squashed %s\n", FUNC2(szProduct), FUNC2(squashed_pc));

    FUNC5(keypath, szUserFeatures);
    FUNC4( keypath, squashed_pc );
    return FUNC0(HKEY_CURRENT_USER, keypath);
}