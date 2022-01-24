#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {void* setResizeCb; void* opaque; } ;
typedef  TYPE_1__ wextern_t ;
struct TYPE_8__ {int /*<<< orphan*/ * ops; int /*<<< orphan*/  type; TYPE_1__* sys; } ;
typedef  TYPE_2__ vout_window_t ;

/* Variables and functions */
 int VLC_ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  VOUT_WINDOW_TYPE_DUMMY ; 
 int /*<<< orphan*/  ops ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (TYPE_2__*,char*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(vout_window_t *wnd)
{
    wextern_t *sys = FUNC3(FUNC0(wnd), sizeof(*sys));
    if (FUNC1(sys==NULL))
        return VLC_ENOMEM;
    sys->opaque          = FUNC2( wnd, "vout-cb-opaque" );
    sys->setResizeCb     = FUNC2( wnd, "vout-cb-resize-cb" );

    wnd->sys = sys;
    wnd->type = VOUT_WINDOW_TYPE_DUMMY;
    wnd->ops = &ops;
    return VLC_SUCCESS;
}