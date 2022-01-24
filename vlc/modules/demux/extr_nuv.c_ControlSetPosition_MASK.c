#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
typedef  int int64_t ;
struct TYPE_9__ {char i_type; scalar_t__ i_length; scalar_t__ i_timecode; int /*<<< orphan*/  i_keyframe; } ;
typedef  TYPE_1__ frame_header_t ;
struct TYPE_10__ {int /*<<< orphan*/  s; TYPE_3__* p_sys; } ;
typedef  TYPE_2__ demux_t ;
struct TYPE_11__ {int /*<<< orphan*/  idx; int /*<<< orphan*/  b_index; scalar_t__ b_seekable; } ;
typedef  TYPE_3__ demux_sys_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*,TYPE_1__*) ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(demux_t *p_demux, uint64_t offset, bool b_guess)
{
    demux_sys_t *p_sys  = p_demux->p_sys;

    /* if we can seek in the stream */
    if( p_sys->b_seekable && !b_guess )
    {
        if (FUNC5(p_demux->s, offset))
            return VLC_EGENERIC;
    }
    else
    {
        /* forward seek */
        if (offset > FUNC6(p_demux->s))
        {
            FUNC2( p_demux, "unable to seek, skipping frames (slow)" );
        }
        else
        {
            FUNC3( p_demux, "unable to seek, only forward seeking is possible" );

            return VLC_EGENERIC;
        }
    }

    for( ;; )
    {
        frame_header_t fh;
        uint64_t i_tell;

        if ((i_tell = FUNC6(p_demux->s)) >= offset)
            break;

        if( FUNC0( p_demux, &fh ) )
            return VLC_EGENERIC;

        if( fh.i_type == 'A' || fh.i_type == 'V' )
        {
            if( !fh.i_keyframe && !p_sys->b_index )
                FUNC1( &p_sys->idx,(int64_t)fh.i_timecode*1000, i_tell );
        }

        if( fh.i_type != 'R' && fh.i_length > 0 )
        {
            if( FUNC4( p_demux->s, NULL,
                                 fh.i_length ) != fh.i_length )
                return VLC_EGENERIC;
        }
    }

    return VLC_SUCCESS;
}