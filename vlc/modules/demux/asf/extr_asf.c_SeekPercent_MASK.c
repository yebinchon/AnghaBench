#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  va_list ;
struct TYPE_8__ {int /*<<< orphan*/  s; TYPE_3__* p_sys; } ;
typedef  TYPE_2__ demux_t ;
struct TYPE_9__ {TYPE_1__* p_fp; int /*<<< orphan*/  i_bitrate; int /*<<< orphan*/  i_data_end; int /*<<< orphan*/  i_data_begin; int /*<<< orphan*/  i_wait_keyframe; } ;
typedef  TYPE_3__ demux_sys_t ;
struct TYPE_7__ {int /*<<< orphan*/  i_min_data_packet_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  INT16_MAX ; 
 int /*<<< orphan*/  INT64_MAX ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4( demux_t *p_demux, int i_query, va_list args )
{
    demux_sys_t *p_sys = p_demux->p_sys;

    FUNC0( p_demux );

    FUNC3( p_demux, "seek with percent: waiting %i frames", p_sys->i_wait_keyframe );
    return FUNC2( p_demux->s, FUNC1( INT64_MAX, p_sys->i_data_begin ),
                                   FUNC1( INT64_MAX, p_sys->i_data_end ),
                                   FUNC1( INT64_MAX, p_sys->i_bitrate ),
                                   FUNC1( INT16_MAX, p_sys->p_fp->i_min_data_packet_size ),
                                   i_query, args );
}