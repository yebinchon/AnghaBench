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
typedef  int /*<<< orphan*/  const WCHAR ;
typedef  int /*<<< orphan*/  UINT ;
typedef  int REGSAM ;
typedef  int /*<<< orphan*/  LONG ;
typedef  int /*<<< orphan*/  HKEY ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_FUNCTION_FAILED ; 
 int /*<<< orphan*/  ERROR_SUCCESS ; 
 int /*<<< orphan*/  HKEY_LOCAL_MACHINE ; 
 int KEY_ALL_ACCESS ; 
 int KEY_WOW64_64KEY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int SQUASHED_GUID_SIZE ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  szInstaller_UpgradeCodes ; 

UINT FUNC6( const WCHAR *code )
{
    WCHAR squashed_code[SQUASHED_GUID_SIZE];
    REGSAM access = KEY_WOW64_64KEY | KEY_ALL_ACCESS;
    HKEY hkey;
    LONG ret;

    if (!FUNC5( code, squashed_code )) return ERROR_FUNCTION_FAILED;
    FUNC3( "%s squashed %s\n", FUNC4(code), FUNC4(squashed_code) );

    if (FUNC2( HKEY_LOCAL_MACHINE, szInstaller_UpgradeCodes, 0, access, &hkey )) return ERROR_SUCCESS;
    ret = FUNC1( hkey, squashed_code );
    FUNC0( hkey );
    return ret;
}