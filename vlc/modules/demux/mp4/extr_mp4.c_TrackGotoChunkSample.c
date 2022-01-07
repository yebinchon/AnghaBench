
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {size_t i_chunk; size_t i_chunk_count; int b_ok; int b_selected; unsigned int i_sample; TYPE_1__* chunk; int * p_es; int i_track_ID; } ;
typedef TYPE_2__ mp4_track_t ;
struct TYPE_12__ {int out; } ;
typedef TYPE_3__ demux_t ;
struct TYPE_10__ {scalar_t__ i_sample_description_index; scalar_t__ i_sample_first; scalar_t__ i_sample; } ;


 int ES_OUT_GET_ES_STATE ;
 int ES_OUT_SET_ES ;
 scalar_t__ TrackCreateES (TYPE_3__*,TYPE_2__*,unsigned int,int **) ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int es_out_Control (int ,int ,int *,...) ;
 int es_out_Del (int ,int *) ;
 int msg_Err (TYPE_3__*,char*,int ) ;
 int msg_Warn (TYPE_3__*,char*,int ) ;

__attribute__((used)) static int TrackGotoChunkSample( demux_t *p_demux, mp4_track_t *p_track,
                                 unsigned int i_chunk, unsigned int i_sample )
{
    bool b_reselect = 0;


    if( p_track->i_chunk >= p_track->i_chunk_count ||
        p_track->chunk[p_track->i_chunk].i_sample_description_index !=
            p_track->chunk[i_chunk].i_sample_description_index )
    {
        msg_Warn( p_demux, "recreate ES for track[Id 0x%x]",
                  p_track->i_track_ID );

        es_out_Control( p_demux->out, ES_OUT_GET_ES_STATE,
                        p_track->p_es, &b_reselect );

        es_out_Del( p_demux->out, p_track->p_es );

        p_track->p_es = ((void*)0);

        if( TrackCreateES( p_demux, p_track, i_chunk, &p_track->p_es ) )
        {
            msg_Err( p_demux, "cannot create es for track[Id 0x%x]",
                     p_track->i_track_ID );

            p_track->b_ok = 0;
            p_track->b_selected = 0;
            return VLC_EGENERIC;
        }
    }


    if( b_reselect )
    {
        es_out_Control( p_demux->out, ES_OUT_SET_ES, p_track->p_es );
    }

    p_track->i_chunk = i_chunk;
    p_track->chunk[i_chunk].i_sample = i_sample - p_track->chunk[i_chunk].i_sample_first;
    p_track->i_sample = i_sample;

    return p_track->b_selected ? VLC_SUCCESS : VLC_EGENERIC;
}
