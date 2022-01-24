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
struct TYPE_4__ {scalar_t__ hwnd; int /*<<< orphan*/  rect; scalar_t__ ip_object; } ;
typedef  int /*<<< orphan*/  RECT ;
typedef  TYPE_1__ PluginHost ;
typedef  scalar_t__ HWND ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*) ; 

void FUNC6(PluginHost *host, HWND hwnd, const RECT *rect)
{
    BOOL rect_changed = FALSE;

    if(!hwnd || (host->hwnd && host->hwnd != hwnd)) {
        FUNC0("unhandled hwnd\n");
        return;
    }

    FUNC2("%p %s\n", hwnd, FUNC5(rect));

    if(FUNC4(rect, &host->rect, sizeof(RECT))) {
        host->rect = *rect;
        rect_changed = TRUE;
    }

    if(!host->hwnd) {
        host->hwnd = hwnd;
        FUNC3(host);
    }

    if(rect_changed && host->ip_object)
        FUNC1(host->ip_object, &host->rect, &host->rect);
}