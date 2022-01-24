#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_5__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ sout_mux_t ;
struct TYPE_6__ {struct TYPE_6__* io_buffer; int /*<<< orphan*/  io; int /*<<< orphan*/  oc; int /*<<< orphan*/  b_error; int /*<<< orphan*/  b_write_header; } ;
typedef  TYPE_2__ sout_mux_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 

void FUNC5( vlc_object_t *p_this )
{
    sout_mux_t *p_mux = (sout_mux_t*)p_this;
    sout_mux_sys_t *p_sys = p_mux->p_sys;

    if( !p_sys->b_write_header && !p_sys->b_error && FUNC1( p_sys->oc ) < 0 )
    {
        FUNC4( p_mux, "could not write trailer" );
    }

    FUNC2(p_sys->oc);
    FUNC0(p_sys->io);

    FUNC3( p_sys->io_buffer );
    FUNC3( p_sys );
}