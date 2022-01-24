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
typedef  int /*<<< orphan*/  ULONG ;
typedef  int /*<<< orphan*/  PVOID ;
typedef  int /*<<< orphan*/  NLSTABLEINFO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(ULONG AnsiCode, ULONG OemCode, ULONG Unicode)
{
    NLSTABLEINFO NlsTable;
    PVOID AnsiCodePageData;
    PVOID OemCodePageData;
    PVOID UnicodeCaseTableData;

    AnsiCodePageData = FUNC0(AnsiCode);
    OemCodePageData = FUNC0(OemCode);
    UnicodeCaseTableData = FUNC0(Unicode);

    FUNC1(AnsiCodePageData, OemCodePageData, UnicodeCaseTableData, &NlsTable);
    FUNC2(&NlsTable);
    /* Do NOT free the buffers here, they are directly used!
        Yes, we leak the old buffers, but this is a test anyway... */

}