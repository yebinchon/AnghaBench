#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int FontCount; } ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  TYPE_1__ GFRI_ENTRY ;
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
    DWORD Size, Case = 0;
    DWORD Data;

    /* data NULL, size zero */
    Size = 0;
    Ret = FUNC0(pszFilePath, &Size, NULL, Case);
    FUNC1(Ret, 1);
    FUNC1(Size, 4);

    /* data NULL, size non-zero */
    Size = 1024;
    Ret = FUNC0(pszFilePath, &Size, NULL, Case);
    FUNC1(Ret, 0);
    FUNC1(Size, 1024);

    /* size zero */
    Data = 0xDEADFACE;
    Size = 0;
    Ret = FUNC0(pszFilePath, &Size, &Data, Case);
    FUNC1(Ret, 1);
    FUNC1(Data, 0xDEADFACE);
    FUNC1(Size, 4);

    /* size non-zero */
    Data = 0xDEADFACE;
    Size = sizeof(Data);
    Ret = FUNC0(pszFilePath, &Size, &Data, Case);
    FUNC1(Ret, 1);
    FUNC1(Data, Entry->FontCount);
    FUNC1(Size, 4);
}