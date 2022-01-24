#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int counter; int /*<<< orphan*/  timer; int /*<<< orphan*/  uri; } ;
typedef  TYPE_1__ install_ctx_t ;
typedef  int /*<<< orphan*/  WPARAM ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  BSTR ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  ID_AXINSTALL_ICON ; 
 int /*<<< orphan*/  ID_AXINSTALL_LOCATION ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 scalar_t__ OIC_WARNING ; 
 int /*<<< orphan*/  STM_SETICON ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  ctxW ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static BOOL FUNC9(HWND hwnd, install_ctx_t *ctx)
{
    BSTR display_uri;
    HRESULT hres;

    if(!FUNC5(hwnd, ctxW, ctx))
        return FALSE;

    hres = FUNC1(ctx->uri, &display_uri);
    if(FUNC0(hres))
        return FALSE;

    FUNC4(hwnd, ID_AXINSTALL_LOCATION, display_uri);
    FUNC7(display_uri);

    FUNC3(hwnd, ID_AXINSTALL_ICON, STM_SETICON,
            (WPARAM)FUNC2(0, (const WCHAR*)OIC_WARNING), 0);

    ctx->counter = 4;
    FUNC8(ctx, hwnd);
    ctx->timer = FUNC6(hwnd, 1, 1000, NULL);
    return TRUE;
}