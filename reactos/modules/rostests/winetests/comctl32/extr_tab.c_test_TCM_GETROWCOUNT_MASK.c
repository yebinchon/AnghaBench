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
typedef  int INT ;
typedef  int /*<<< orphan*/ * HWND ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  NUM_MSG_SEQUENCES ; 
 int /*<<< orphan*/  PARENT_SEQ_INDEX ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TAB_SEQ_INDEX ; 
 int TCIF_IMAGE ; 
 int TCIF_TEXT ; 
 int /*<<< orphan*/  TCM_GETROWCOUNT ; 
 int /*<<< orphan*/  TCS_FIXEDWIDTH ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int const) ; 
 int /*<<< orphan*/  empty_sequence ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  get_row_count_seq ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  parent_wnd ; 
 int /*<<< orphan*/  sequences ; 

__attribute__((used)) static void FUNC6(void)
{
    const INT nTabs = 5;
    HWND hTab;
    INT count;

    FUNC3(sequences, NUM_MSG_SEQUENCES);

    hTab = FUNC2(parent_wnd, TCS_FIXEDWIDTH, TCIF_TEXT|TCIF_IMAGE, nTabs);
    FUNC4(hTab != NULL, "Failed to create tab control\n");

    FUNC3(sequences, NUM_MSG_SEQUENCES);

    count = FUNC1(hTab, TCM_GETROWCOUNT, 0, 0);
    FUNC4(count == 1, "Unexpected row count %d.\n", count);

    FUNC5(sequences, TAB_SEQ_INDEX, get_row_count_seq, "Get rowCount test sequence", FALSE);
    FUNC5(sequences, PARENT_SEQ_INDEX, empty_sequence, "Get rowCount test parent sequence", FALSE);

    FUNC0(hTab);
}