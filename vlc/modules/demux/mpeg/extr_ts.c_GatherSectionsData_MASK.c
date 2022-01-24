#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_2__* p_stream; } ;
struct TYPE_10__ {TYPE_1__ u; } ;
typedef  TYPE_3__ ts_pid_t ;
typedef  int /*<<< orphan*/  demux_t ;
struct TYPE_11__ {int i_flags; int /*<<< orphan*/  p_buffer; } ;
typedef  TYPE_4__ block_t ;
struct TYPE_9__ {int /*<<< orphan*/  p_sections_proc; } ;

/* Variables and functions */
 int BLOCK_FLAG_CORRUPTED ; 
 int BLOCK_FLAG_DISCONTINUITY ; 
 int BLOCK_FLAG_SCRAMBLED ; 
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC4( demux_t *p_demux, ts_pid_t *p_pid, block_t *p_pkt, size_t i_skip )
{
    FUNC0(i_skip); FUNC0(p_demux);
    bool b_ret = false;

    if( p_pkt->i_flags & BLOCK_FLAG_DISCONTINUITY )
    {
        FUNC3( p_pid->u.p_stream->p_sections_proc );
    }

    if( (p_pkt->i_flags & (BLOCK_FLAG_SCRAMBLED | BLOCK_FLAG_CORRUPTED)) == 0 )
    {
        FUNC2( p_pid->u.p_stream->p_sections_proc, p_pkt->p_buffer );
        b_ret = true;
    }

    FUNC1( p_pkt );

    return b_ret;
}