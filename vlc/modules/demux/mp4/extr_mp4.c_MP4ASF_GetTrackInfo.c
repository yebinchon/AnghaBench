
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int asfinfo; } ;
typedef TYPE_1__ mp4_track_t ;
typedef int asf_track_info_t ;
typedef int asf_packet_sys_t ;


 TYPE_1__* MP4ASF_GetTrack (int *,int ) ;

__attribute__((used)) static asf_track_info_t * MP4ASF_GetTrackInfo( asf_packet_sys_t *p_packetsys,
                                               uint8_t i_stream_number )
{
    mp4_track_t *p_track = MP4ASF_GetTrack( p_packetsys, i_stream_number );
    if ( p_track )
        return &p_track->asfinfo;
    else
        return ((void*)0);
}
