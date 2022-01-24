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
struct tabcreate_style {scalar_t__ act_style; scalar_t__ style; } ;
typedef  int /*<<< orphan*/  HWND ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__,int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GWL_STYLE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WC_TABCONTROLA ; 
 struct tabcreate_style* create_styles ; 
 int /*<<< orphan*/  FUNC3 (int,char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  parent_wnd ; 

__attribute__((used)) static void FUNC4(void)
{
    const struct tabcreate_style *ptr = create_styles;
    DWORD style;
    HWND hTab;

    while (ptr->style)
    {
        hTab = FUNC0(WC_TABCONTROLA, "TestTab", ptr->style,
            10, 10, 300, 100, parent_wnd, NULL, NULL, 0);
        style = FUNC2(hTab, GWL_STYLE);
        FUNC3(style == ptr->act_style, "expected style 0x%08x, got style 0x%08x\n", ptr->act_style, style);

        FUNC1(hTab);
        ptr++;
    }
}