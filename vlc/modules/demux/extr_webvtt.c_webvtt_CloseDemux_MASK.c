#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_9__ {TYPE_4__* p_sys; } ;
typedef  TYPE_3__ demux_t ;
struct TYPE_7__ {TYPE_4__* p_array; } ;
struct TYPE_8__ {size_t i_count; TYPE_4__* p_array; } ;
struct TYPE_10__ {scalar_t__ p_streamparser; TYPE_1__ index; TYPE_2__ cues; } ;
typedef  TYPE_4__ demux_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ *) ; 

void FUNC4( vlc_object_t *p_this )
{
    demux_t *p_demux = (demux_t*)p_this;
    demux_sys_t *p_sys = p_demux->p_sys;

    for( size_t i=0; i< p_sys->cues.i_count; i++ )
        FUNC1( &p_sys->cues.p_array[i] );
    FUNC0( p_sys->cues.p_array );

    FUNC0( p_sys->index.p_array );

    if( p_sys->p_streamparser )
    {
        FUNC3( p_sys->p_streamparser, NULL );
        FUNC2( p_sys->p_streamparser );
    }

    FUNC0( p_sys );
}