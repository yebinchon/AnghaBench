#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_6__ {int /*<<< orphan*/  out; TYPE_3__* p_sys; } ;
typedef  TYPE_2__ demux_t ;
struct TYPE_5__ {TYPE_3__* p_array; } ;
struct TYPE_7__ {TYPE_1__ times; scalar_t__ p_xml; scalar_t__ p_reader; scalar_t__ p_es; scalar_t__ p_rootnode; } ;
typedef  TYPE_3__ demux_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

void FUNC5( vlc_object_t* p_this )
{
    demux_t *p_demux = (demux_t *)p_this;
    demux_sys_t* p_sys = p_demux->p_sys;

    if( p_sys->p_rootnode )
        FUNC2( p_sys->p_rootnode );

    if( p_sys->p_es )
        FUNC0( p_demux->out, p_sys->p_es );

    if( p_sys->p_reader )
        FUNC4( p_sys->p_reader );

    if( p_sys->p_xml )
        FUNC3( p_sys->p_xml );

    FUNC1( p_sys->times.p_array );

    FUNC1( p_sys );
}