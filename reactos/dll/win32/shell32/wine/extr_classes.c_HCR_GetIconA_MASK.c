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
typedef  int /*<<< orphan*/  LPSTR ;
typedef  char* LPCSTR ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  HKEY_CLASSES_ROOT ; 
 int /*<<< orphan*/  KEY_READ ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char*) ; 

BOOL FUNC5(LPCSTR szClass, LPSTR szDest, LPCSTR szName, DWORD len, int* picon_idx)
{
	HKEY	hkey;
	char	sTemp[MAX_PATH];
	BOOL	ret = FALSE;

	FUNC3("%s\n",szClass );

	FUNC4(sTemp, "%s\\DefaultIcon",szClass);

	if (!FUNC2(HKEY_CLASSES_ROOT, sTemp, 0, KEY_READ, &hkey))
	{
	  ret = FUNC0(hkey, szDest, szName, len, picon_idx);
	  FUNC1(hkey);
	}
	FUNC3("-- %s %i\n", szDest, *picon_idx);
	return ret;
}