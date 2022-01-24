#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  IBindStatusCallback_iface; } ;
struct TYPE_13__ {TYPE_2__ bsc; } ;
typedef  TYPE_3__ nsChannelBSC ;
struct TYPE_11__ {int /*<<< orphan*/  IHTMLWindow2_iface; int /*<<< orphan*/ * outer_window; } ;
struct TYPE_15__ {TYPE_1__ base; TYPE_3__* bscallback; } ;
struct TYPE_14__ {TYPE_5__* pending_window; int /*<<< orphan*/  mon; } ;
typedef  TYPE_4__ HTMLOuterWindow ;
typedef  TYPE_5__ HTMLInnerWindow ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ ,TYPE_5__**) ; 

HRESULT FUNC5(HTMLOuterWindow *outer_window, nsChannelBSC *channelbsc)
{
    HTMLInnerWindow *pending_window;
    HRESULT hres;

    hres = FUNC4(outer_window, outer_window->mon /* FIXME */, &pending_window);
    if(FUNC0(hres))
        return hres;

    if(channelbsc) {
        FUNC1(&channelbsc->bsc.IBindStatusCallback_iface);
        pending_window->bscallback = channelbsc;
    }

    if(outer_window->pending_window) {
        FUNC3(outer_window->pending_window);
        outer_window->pending_window->base.outer_window = NULL;
        FUNC2(&outer_window->pending_window->base.IHTMLWindow2_iface);
    }

    outer_window->pending_window = pending_window;
    return S_OK;
}