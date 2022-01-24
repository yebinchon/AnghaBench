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
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  LPWSTR ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  HKEY_CLASSES_ROOT ; 
 int /*<<< orphan*/  KEY_READ ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int) ; 

BOOL FUNC7(LPCWSTR szClass, LPWSTR szDest, LPCWSTR szName, DWORD len, int* picon_idx)
{
        static const WCHAR swDefaultIcon[] = {'\\','D','e','f','a','u','l','t','I','c','o','n',0};
	HKEY	hkey;
	WCHAR	sTemp[MAX_PATH];
	BOOL	ret = FALSE;

	FUNC3("%s\n",FUNC4(szClass) );

	FUNC6(sTemp, szClass, MAX_PATH);
	FUNC5(sTemp, swDefaultIcon);

	if (!FUNC2(HKEY_CLASSES_ROOT, sTemp, 0, KEY_READ, &hkey))
	{
	  ret = FUNC0(hkey, szDest, szName, len, picon_idx);
	  FUNC1(hkey);
	}

        if(ret)
            FUNC3("-- %s %i\n", FUNC4(szDest), *picon_idx);
        else
            FUNC3("-- not found\n");

	return ret;
}