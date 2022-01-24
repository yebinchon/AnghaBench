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
typedef  int /*<<< orphan*/  szReg ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  PCWSTR ;
typedef  int /*<<< orphan*/  INT ;
typedef  int DWORD ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  KEY_METRIC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int /*<<< orphan*/ ) ; 

void
FUNC3(PCWSTR pwszVal, INT iVal)
{
    WCHAR szReg[10];
    DWORD cbSize;

    cbSize = sizeof(szReg);
    FUNC2(FUNC0(KEY_METRIC, pwszVal, &szReg, &cbSize, NULL) == ERROR_SUCCESS, "Value=%S\n", pwszVal);
    FUNC2(FUNC1(szReg, L"1") == 0, "Value=%S\n", pwszVal);

}