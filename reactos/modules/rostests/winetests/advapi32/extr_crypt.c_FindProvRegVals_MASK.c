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
typedef  char* LPSTR ;
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  HKEY_LOCAL_MACHINE ; 
 int /*<<< orphan*/  LMEM_ZEROINIT ; 
 char* FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,char*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static BOOL FUNC6(DWORD dwIndex, DWORD *pdwProvType, LPSTR *pszProvName, 
			    DWORD *pcbProvName, DWORD *pdwProvCount)
{
	HKEY hKey;
	HKEY subkey;
	DWORD size = sizeof(DWORD);
	
	if (FUNC3(HKEY_LOCAL_MACHINE, "Software\\Microsoft\\Cryptography\\Defaults\\Provider", &hKey))
		return FALSE;
	
	FUNC4(hKey, NULL, NULL, NULL, pdwProvCount, pcbProvName,
				 NULL, NULL, NULL, NULL, NULL, NULL);
	(*pcbProvName)++;

	if (!(*pszProvName = FUNC0(LMEM_ZEROINIT, *pcbProvName)))
		return FALSE;
	
	FUNC2(hKey, dwIndex, *pszProvName, pcbProvName, NULL, NULL, NULL, NULL);
	(*pcbProvName)++;

	FUNC3(hKey, *pszProvName, &subkey);
	FUNC5(subkey, "Type", NULL, NULL, (LPBYTE)pdwProvType, &size);
	
	FUNC1(subkey);
	FUNC1(hKey);
	
	return TRUE;
}