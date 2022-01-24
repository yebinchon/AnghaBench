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
typedef  int* PSTR ;
typedef  char* LPSTR ;
typedef  int /*<<< orphan*/ * LPBYTE ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  HKEY_LOCAL_MACHINE ; 
 int /*<<< orphan*/  LMEM_ZEROINIT ; 
 char* FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,char*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  TRUE ; 
 int FUNC7 (char*) ; 

__attribute__((used)) static BOOL FUNC8(DWORD *pdwIndex, DWORD *pdwProvType, LPSTR *pszTypeName,
				 DWORD *pcbTypeName, DWORD *pdwTypeCount)
{
	HKEY hKey;
	HKEY hSubKey;
	PSTR ch;
	LPSTR szName;
	DWORD cbName;
	BOOL ret = FALSE;

	if (FUNC4(HKEY_LOCAL_MACHINE, "Software\\Microsoft\\Cryptography\\Defaults\\Provider Types", &hKey))
		return FALSE;

	if (FUNC5(hKey, NULL, NULL, NULL, pdwTypeCount, &cbName, NULL,
			NULL, NULL, NULL, NULL, NULL))
		goto cleanup;
	cbName++;

	if (!(szName = FUNC0(LMEM_ZEROINIT, cbName)))
		goto cleanup;

	while (!FUNC3(hKey, *pdwIndex, szName, &cbName, NULL, NULL, NULL, NULL))
	{
		cbName++;
		ch = szName + FUNC7(szName);
		/* Convert "Type 000" to 0, etc/ */
		*pdwProvType = *(--ch) - '0';
		*pdwProvType += (*(--ch) - '0') * 10;
		*pdwProvType += (*(--ch) - '0') * 100;

		if (FUNC4(hKey, szName, &hSubKey))
			break;

		if (!FUNC6(hSubKey, "TypeName", NULL, NULL, NULL, pcbTypeName))
		{
			if (!(*pszTypeName = FUNC0(LMEM_ZEROINIT, *pcbTypeName)))
				break;

			if (!FUNC6(hSubKey, "TypeName", NULL, NULL, (LPBYTE)*pszTypeName, pcbTypeName))
			{
				ret = TRUE;
				break;
			}

			FUNC1(*pszTypeName);
		}

		FUNC2(hSubKey);

		(*pdwIndex)++;
	}
	FUNC2(hSubKey);
	FUNC1(szName);

cleanup:
	FUNC2(hKey);

	return ret;
}