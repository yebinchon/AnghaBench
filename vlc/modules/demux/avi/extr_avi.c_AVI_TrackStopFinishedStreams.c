
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_3__* p_sys; } ;
typedef TYPE_2__ demux_t ;
struct TYPE_8__ {unsigned int i_track; TYPE_4__** track; } ;
typedef TYPE_3__ demux_sys_t ;
struct TYPE_6__ {scalar_t__ i_size; } ;
struct TYPE_9__ {scalar_t__ i_idxposc; int b_eof; TYPE_1__ idx; } ;
typedef TYPE_4__ avi_track_t ;



__attribute__((used)) static int AVI_TrackStopFinishedStreams( demux_t *p_demux )
{
    demux_sys_t *p_sys = p_demux->p_sys;
    unsigned int i;
    int b_end = 1;

    for( i = 0; i < p_sys->i_track; i++ )
    {
        avi_track_t *tk = p_sys->track[i];
        if( tk->i_idxposc >= tk->idx.i_size )
        {
            tk->b_eof = 1;
        }
        else
        {
            b_end = 0;
        }
    }
    return( b_end );
}
