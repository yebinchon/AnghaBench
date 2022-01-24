#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {size_t i_chunk; size_t i_chunk_count; int b_ok; int b_selected; unsigned int i_sample; TYPE_1__* chunk; int /*<<< orphan*/ * p_es; int /*<<< orphan*/  i_track_ID; } ;
typedef  TYPE_2__ mp4_track_t ;
struct TYPE_12__ {int /*<<< orphan*/  out; } ;
typedef  TYPE_3__ demux_t ;
struct TYPE_10__ {scalar_t__ i_sample_description_index; scalar_t__ i_sample_first; scalar_t__ i_sample; } ;

/* Variables and functions */
 int /*<<< orphan*/  ES_OUT_GET_ES_STATE ; 
 int /*<<< orphan*/  ES_OUT_SET_ES ; 
 scalar_t__ FUNC0 (TYPE_3__*,TYPE_2__*,unsigned int,int /*<<< orphan*/ **) ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5( demux_t *p_demux, mp4_track_t *p_track,
                                 unsigned int i_chunk, unsigned int i_sample )
{
    bool b_reselect = false;

    /* now see if actual es is ok */
    if( p_track->i_chunk >= p_track->i_chunk_count ||
        p_track->chunk[p_track->i_chunk].i_sample_description_index !=
            p_track->chunk[i_chunk].i_sample_description_index )
    {
        FUNC4( p_demux, "recreate ES for track[Id 0x%x]",
                  p_track->i_track_ID );

        FUNC1( p_demux->out, ES_OUT_GET_ES_STATE,
                        p_track->p_es, &b_reselect );

        FUNC2( p_demux->out, p_track->p_es );

        p_track->p_es = NULL;

        if( FUNC0( p_demux, p_track, i_chunk, &p_track->p_es ) )
        {
            FUNC3( p_demux, "cannot create es for track[Id 0x%x]",
                     p_track->i_track_ID );

            p_track->b_ok       = false;
            p_track->b_selected = false;
            return VLC_EGENERIC;
        }
    }

    /* select again the new decoder */
    if( b_reselect )
    {
        FUNC1( p_demux->out, ES_OUT_SET_ES, p_track->p_es );
    }

    p_track->i_chunk    = i_chunk;
    p_track->chunk[i_chunk].i_sample = i_sample - p_track->chunk[i_chunk].i_sample_first;
    p_track->i_sample   = i_sample;

    return p_track->b_selected ? VLC_SUCCESS : VLC_EGENERIC;
}