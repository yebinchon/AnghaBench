
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_6__ {scalar_t__ const i_track_ID; } ;
typedef TYPE_1__ mp4_track_t ;
struct TYPE_7__ {TYPE_3__* p_sys; } ;
typedef TYPE_2__ demux_t ;
struct TYPE_8__ {unsigned int i_tracks; TYPE_1__* track; } ;
typedef TYPE_3__ demux_sys_t ;



__attribute__((used)) static mp4_track_t *MP4_GetTrackByTrackID( demux_t *p_demux, const uint32_t tid )
{
    demux_sys_t *p_sys = p_demux->p_sys;

    mp4_track_t *ret = ((void*)0);
    for( unsigned i = 0; i < p_sys->i_tracks; i++ )
    {
        ret = &p_sys->track[i];
        if( ret->i_track_ID == tid )
            return ret;
    }
    return ((void*)0);
}
