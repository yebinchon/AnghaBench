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
typedef  int /*<<< orphan*/  MSG ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int EXPECT_SETTITLE ; 
 int EXPECT_UPDATEUI ; 
 int /*<<< orphan*/  Exec_SETTITLE ; 
 int /*<<< orphan*/  Exec_UPDATECOMMANDS ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  UpdateUI ; 
 int /*<<< orphan*/  called_Exec_SETTITLE ; 
 int /*<<< orphan*/  called_UpdateUI ; 
 int /*<<< orphan*/  doc_hwnd ; 

__attribute__((used)) static void FUNC5(DWORD flags)
{
    BOOL *b = &called_Exec_SETTITLE;
    MSG msg;

    if(flags & EXPECT_UPDATEUI) {
        FUNC3(UpdateUI);
        FUNC3(Exec_UPDATECOMMANDS);
        b = &called_UpdateUI;
    }
    if(flags & EXPECT_SETTITLE)
        FUNC3(Exec_SETTITLE);

    while(!*b && FUNC2(&msg, doc_hwnd, 0, 0)) {
        FUNC4(&msg);
        FUNC1(&msg);
    }

    if(flags & EXPECT_UPDATEUI) {
        FUNC0(UpdateUI);
        FUNC0(Exec_UPDATECOMMANDS);
    }
    if(flags & EXPECT_SETTITLE)
        FUNC0(Exec_SETTITLE);
}