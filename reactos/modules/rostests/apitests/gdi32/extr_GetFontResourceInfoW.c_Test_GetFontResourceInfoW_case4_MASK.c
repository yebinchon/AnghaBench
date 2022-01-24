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
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int /*<<< orphan*/  GFRI_ENTRY ;
typedef  int DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *,int) ; 
 int MAX_PATH ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static void
FUNC5(LPCWSTR pszFilePath, const GFRI_ENTRY *Entry)
{
    BOOL Ret;
    DWORD Size, Case = 4;
    WCHAR Data[MAX_PATH];

    /* data NULL, size zero */
    Size = 0;
    Ret = FUNC0(pszFilePath, &Size, NULL, Case);
    FUNC4(Ret, 1);
    FUNC4(Size, (FUNC2(pszFilePath) + 1) * sizeof(WCHAR));

    /* data NULL, size non-zero */
    Size = MAX_PATH;
    Ret = FUNC0(pszFilePath, &Size, NULL, Case);
    FUNC4(Ret, 0);
    FUNC4(Size, MAX_PATH);

    /* size zero */
    Size = 0;
    Ret = FUNC0(pszFilePath, &Size, Data, Case);
    FUNC4(Ret, 1);
    FUNC4(Size, (FUNC2(pszFilePath) + 1) * sizeof(WCHAR));

    /* size non-zero */
    Size = MAX_PATH;
    Ret = FUNC0(pszFilePath, &Size, Data, Case);
    FUNC4(Ret, 1);
    FUNC4(Size, (FUNC2(pszFilePath) + 1) * sizeof(WCHAR));
    FUNC3(FUNC1(pszFilePath, Data) == 0, "data mismatched: \"%S\"\n", Data);
}