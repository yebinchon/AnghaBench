#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_9__ {TYPE_4__* p_sys; } ;
typedef  TYPE_3__ demux_t ;
struct TYPE_8__ {TYPE_4__* p_bits; } ;
struct TYPE_7__ {size_t i_count; TYPE_6__* p_entry; } ;
struct TYPE_10__ {int /*<<< orphan*/  p_packetizer; TYPE_2__ mllt; TYPE_1__ chapters; scalar_t__ p_packetized_data; } ;
typedef  TYPE_4__ demux_sys_t ;
struct TYPE_11__ {int /*<<< orphan*/  p_seekpoint; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5( vlc_object_t * p_this )
{
    demux_t     *p_demux = (demux_t*)p_this;
    demux_sys_t *p_sys = p_demux->p_sys;

    if( p_sys->p_packetized_data )
        FUNC1( p_sys->p_packetized_data );
    for( size_t i=0; i< p_sys->chapters.i_count; i++ )
        FUNC4( p_sys->chapters.p_entry[i].p_seekpoint );
    FUNC0( p_sys->chapters.i_count, p_sys->chapters.p_entry );
    if( p_sys->mllt.p_bits )
        FUNC3( p_sys->mllt.p_bits );
    FUNC2( p_sys->p_packetizer );
    FUNC3( p_sys );
}