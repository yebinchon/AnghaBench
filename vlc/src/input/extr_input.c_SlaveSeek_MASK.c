#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_tick_t ;
typedef  int /*<<< orphan*/  input_thread_t ;
struct TYPE_5__ {int b_eof; int /*<<< orphan*/  p_demux; } ;
typedef  TYPE_2__ input_source_t ;
struct TYPE_6__ {int i_slave; TYPE_2__** slave; TYPE_1__* master; } ;
struct TYPE_4__ {int /*<<< orphan*/  p_demux; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEMUX_GET_TIME ; 
 int /*<<< orphan*/  DEMUX_SET_TIME ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 

__attribute__((used)) static void FUNC3( input_thread_t *p_input )
{
    vlc_tick_t i_time;
    int i;

    if( FUNC0( FUNC1(p_input)->master->p_demux, DEMUX_GET_TIME, i_time ) )
    {
        FUNC2( p_input, "demux doesn't like DEMUX_GET_TIME" );
        return;
    }

    for( i = 0; i < FUNC1(p_input)->i_slave; i++ )
    {
        input_source_t *in = FUNC1(p_input)->slave[i];

        if( FUNC0( in->p_demux, DEMUX_SET_TIME, i_time, true ) )
        {
            if( !in->b_eof )
                FUNC2( p_input, "seek failed for slave %d -> EOF", i );
            in->b_eof = true;
        }
        else
        {
            in->b_eof = false;
        }
    }
}