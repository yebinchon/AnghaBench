
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ stime_t ;
struct TYPE_4__ {scalar_t__ i_moov_duration; int p_moov; } ;
typedef TYPE_1__ demux_sys_t ;
struct TYPE_5__ {scalar_t__ i_sample_count; scalar_t__ i_duration; } ;
typedef int MP4_Box_t ;


 TYPE_3__* BOXDATA (int const*) ;
 int * MP4_BoxGet (int *,char*) ;
 int * MP4_GetTrakByTrackID (int ,unsigned int) ;

__attribute__((used)) static stime_t GetMoovTrackDuration( demux_sys_t *p_sys, unsigned i_track_ID )
{
    MP4_Box_t *p_trak = MP4_GetTrakByTrackID( p_sys->p_moov, i_track_ID );
    const MP4_Box_t *p_stsz;
    const MP4_Box_t *p_tkhd;
    if ( (p_tkhd = MP4_BoxGet( p_trak, "tkhd" )) &&
         (p_stsz = MP4_BoxGet( p_trak, "mdia/minf/stbl/stsz" )) &&

         BOXDATA(p_stsz)->i_sample_count > 0 )
    {
        if( BOXDATA(p_tkhd)->i_duration <= p_sys->i_moov_duration )
            return BOXDATA(p_tkhd)->i_duration;
        else
            return p_sys->i_moov_duration;
    }
    return 0;
}
