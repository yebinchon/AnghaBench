
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_14__ {int p_es; int i_pts_backup; int i_dts_backup; } ;
typedef TYPE_2__ mp4_track_t ;
struct TYPE_15__ {int i_pts; int i_dts; } ;
typedef TYPE_3__ block_t ;
struct TYPE_16__ {TYPE_1__* p_demux; } ;
typedef TYPE_4__ asf_packet_sys_t ;
struct TYPE_13__ {int out; } ;


 TYPE_2__* MP4ASF_GetTrack (TYPE_4__*,int ) ;
 TYPE_3__* block_ChainGather (TYPE_3__*) ;
 int block_Release (TYPE_3__*) ;
 int es_out_Send (int ,int ,TYPE_3__*) ;

__attribute__((used)) static void MP4ASF_Send( asf_packet_sys_t *p_packetsys, uint8_t i_stream_number,
                         block_t **pp_frame )
{
    mp4_track_t *p_track = MP4ASF_GetTrack( p_packetsys, i_stream_number );
    if ( !p_track )
    {
        block_Release( *pp_frame );
    }
    else
    {
        block_t *p_gather = block_ChainGather( *pp_frame );
        p_gather->i_dts = p_track->i_dts_backup;
        p_gather->i_pts = p_track->i_pts_backup;
        es_out_Send( p_packetsys->p_demux->out, p_track->p_es, p_gather );
    }

    *pp_frame = ((void*)0);
}
