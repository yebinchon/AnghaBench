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
struct TYPE_3__ {scalar_t__ counter; int /*<<< orphan*/  timer; } ;
typedef  TYPE_1__ install_ctx_t ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IDS_AXINSTALL_INSTALL ; 
 int /*<<< orphan*/  IDS_AXINSTALL_INSTALLN ; 
 int /*<<< orphan*/  ID_AXINSTALL_INSTALL_BTN ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  urlmon_instance ; 

__attribute__((used)) static void FUNC7(install_ctx_t *ctx, HWND hwnd)
{
    WCHAR text[100];

    if(--ctx->counter <= 0) {
        HWND button_hwnd;

        FUNC3(hwnd, ctx->timer);
        FUNC4(urlmon_instance, IDS_AXINSTALL_INSTALL, text, FUNC0(text));

        button_hwnd = FUNC2(hwnd, ID_AXINSTALL_INSTALL_BTN);
        FUNC1(button_hwnd, TRUE);
    }else {
        WCHAR buf[100];
        FUNC4(urlmon_instance, IDS_AXINSTALL_INSTALLN, buf, FUNC0(buf));
        FUNC6(text, buf, ctx->counter);
    }

    FUNC5(hwnd, ID_AXINSTALL_INSTALL_BTN, text);
}