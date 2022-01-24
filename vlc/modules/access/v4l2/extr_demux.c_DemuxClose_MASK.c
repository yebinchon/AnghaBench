#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ demux_t ;
struct TYPE_5__ {int /*<<< orphan*/ * vbi; int /*<<< orphan*/  fd; int /*<<< orphan*/  controls; int /*<<< orphan*/  bufc; int /*<<< orphan*/ * bufv; int /*<<< orphan*/  thread; } ;
typedef  TYPE_2__ demux_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8( vlc_object_t *obj )
{
    demux_t *demux = (demux_t *)obj;
    demux_sys_t *sys = demux->p_sys;

    FUNC5 (sys->thread);
    FUNC6 (sys->thread, NULL);
    if (sys->bufv != NULL)
        FUNC2 (sys->fd, sys->bufv, sys->bufc);
    FUNC1(FUNC7(obj), sys->controls);
    FUNC4 (sys->fd);

#ifdef ZVBI_COMPILED
    if (sys->vbi != NULL)
        CloseVBI (sys->vbi);
#endif

    FUNC3( sys );
}