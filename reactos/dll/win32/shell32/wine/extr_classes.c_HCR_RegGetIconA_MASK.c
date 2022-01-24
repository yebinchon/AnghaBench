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
typedef  int /*<<< orphan*/  LPCSTR ;
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  FALSE ; 
 int MAX_PATH ; 
 scalar_t__ FUNC1 (char*,int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ REG_EXPAND_SZ ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  TRUE ; 
 int FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,scalar_t__) ; 

__attribute__((used)) static BOOL FUNC6(HKEY hkey, LPSTR szDest, LPCSTR szName, DWORD len, int* picon_idx)
{
	DWORD dwType;
	char sTemp[MAX_PATH];
	char  sNum[5];

	if (!FUNC3(hkey, szName, 0, &dwType, (LPBYTE)szDest, &len))
	{
          if (dwType == REG_EXPAND_SZ)
	  {
	    FUNC0(szDest, sTemp, MAX_PATH);
	    FUNC5(szDest, sTemp, len);
	  }
	  if (FUNC1 (szDest, 2, sNum, 5))
             *picon_idx=FUNC4(sNum);
          else
             *picon_idx=0; /* sometimes the icon number is missing */
	  FUNC1 (szDest, 1, szDest, len);
          FUNC2(szDest);
	  return TRUE;
	}
	return FALSE;
}