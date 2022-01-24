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
typedef  int /*<<< orphan*/  sTempVerb ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  scalar_t__ LPWSTR ;
typedef  scalar_t__ LPCWSTR ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 int FALSE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  HKEY_CLASSES_ROOT ; 
 int /*<<< orphan*/  KEY_READ ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * swCommand ; 
 int /*<<< orphan*/  swShell ; 

BOOL FUNC8( HKEY hkeyClass, LPCWSTR szClass, LPCWSTR szVerb, LPWSTR szDest, DWORD len )
{
	WCHAR sTempVerb[MAX_PATH];
	BOOL ret;

	FUNC4("%p %s %s %p\n", hkeyClass, FUNC5(szClass), FUNC5(szVerb), szDest);

	if (szClass)
            FUNC2(HKEY_CLASSES_ROOT, szClass, 0, KEY_READ, &hkeyClass);
        if (!hkeyClass)
            return FALSE;
        ret = FALSE;

        if (FUNC0(hkeyClass, szVerb, sTempVerb, sizeof(sTempVerb)/sizeof(sTempVerb[0])))
        {
            WCHAR sTemp[MAX_PATH];
            FUNC7(sTemp, swShell);
            FUNC6(sTemp, sTempVerb);
            FUNC6(sTemp, swCommand);
            ret = (ERROR_SUCCESS == FUNC3(hkeyClass, sTemp, NULL, NULL, szDest, &len));
        }
        if (szClass)
            FUNC1(hkeyClass);

	FUNC4("-- %s\n", FUNC5(szDest) );
	return ret;
}