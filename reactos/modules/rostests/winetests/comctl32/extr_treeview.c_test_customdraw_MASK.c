#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lf ;
typedef  int /*<<< orphan*/  WPARAM ;
struct TYPE_4__ {int lfHeight; } ;
typedef  TYPE_1__ LOGFONTA ;
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NUM_MSG_SEQUENCES ; 
 int /*<<< orphan*/  PARENT_CD_SEQ_INDEX ; 
 int /*<<< orphan*/  SPI_GETICONTITLELOGFONT ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  TVE_EXPAND ; 
 int /*<<< orphan*/  TVM_EXPAND ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * g_customdraw_font ; 
 scalar_t__ hRoot ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  parent_cd_seq ; 
 int /*<<< orphan*/  sequences ; 

__attribute__((used)) static void FUNC11(void)
{
    LOGFONTA lf;
    HWND hwnd;

    hwnd = FUNC7(0);
    FUNC8(hwnd);
    FUNC4(hwnd, TVM_EXPAND, TVE_EXPAND, (WPARAM)hRoot);

    /* create additional font, custom draw handler will select it */
    FUNC5(SPI_GETICONTITLELOGFONT, sizeof(lf), &lf, 0);
    lf.lfHeight *= 2;
    g_customdraw_font = FUNC0(&lf);
    FUNC9(sequences, NUM_MSG_SEQUENCES);
    FUNC3(hwnd, NULL, TRUE);
    FUNC6(hwnd);
    FUNC10(sequences, PARENT_CD_SEQ_INDEX, parent_cd_seq, "custom draw notifications", FALSE);
    FUNC1(g_customdraw_font);
    g_customdraw_font = NULL;

    FUNC2(hwnd);
}