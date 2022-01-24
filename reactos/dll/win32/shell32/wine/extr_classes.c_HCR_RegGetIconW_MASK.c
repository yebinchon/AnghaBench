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
typedef  int /*<<< orphan*/ * LPWSTR ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FALSE ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ REG_EXPAND_SZ ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static BOOL FUNC7(HKEY hkey, LPWSTR szDest, LPCWSTR szName, DWORD len, int* picon_idx)
{
    DWORD dwType;
    WCHAR sTemp[MAX_PATH];
    WCHAR sNum[7];

    if (!FUNC3(hkey, szName, 0, &dwType, (LPBYTE)szDest, &len))
    {
      if (dwType == REG_EXPAND_SZ)
      {
        FUNC0(szDest, sTemp, MAX_PATH);
        FUNC6(szDest, sTemp, len);
      }
        if (FUNC1 (szDest, 2, sNum, FUNC4(sNum)))
             *picon_idx = FUNC5(sNum);
          else
             *picon_idx=0; /* sometimes the icon number is missing */
      FUNC1 (szDest, 1, szDest, len);
          FUNC2(szDest);
      return TRUE;
    }
    return FALSE;
}