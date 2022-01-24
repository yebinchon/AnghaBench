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
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int /*<<< orphan*/  GFRI_ENTRY ;
typedef  int /*<<< orphan*/  Data ;
typedef  int DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int*,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 

__attribute__((used)) static void
FUNC2(LPCWSTR pszFilePath, const GFRI_ENTRY *Entry)
{
    BOOL Ret;
    DWORD Size, Case = 5;
    DWORD Data;

    /* data NULL, size zero */
    Size = 0;
    Ret = FUNC0(pszFilePath, &Size, NULL, Case);
    FUNC1(Ret, 1);
    FUNC1(Size, 4);

    /* data NULL, size non-zero */
    Size = sizeof(Data);
    Ret = FUNC0(pszFilePath, &Size, NULL, Case);
    FUNC1(Ret, 0);
    FUNC1(Size, 4);

    /* size zero */
    Size = 0;
    Data = 0xDEADFACE;
    Ret = FUNC0(pszFilePath, &Size, &Data, Case);
    FUNC1(Ret, 1);
    FUNC1(Size, 4);
    FUNC1(Data, 0xDEADFACE);

    /* size non-zero */
    Size = sizeof(Data);
    Data = 0xDEADFACE;
    Ret = FUNC0(pszFilePath, &Size, &Data, Case);
    FUNC1(Ret, 1);
    FUNC1(Size, 4);
    FUNC1(Data, 0);
}