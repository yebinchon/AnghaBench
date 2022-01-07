
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int i_timescale; int i_track_ID; int const* p_track; int fmt; } ;
typedef TYPE_1__ mp4_track_t ;
struct TYPE_6__ {int i_track_ID; } ;
typedef int MP4_Box_t ;


 TYPE_4__* BOXDATA (int const*) ;
 int * MP4_BoxGet (int const*,char*) ;
 int UNKNOWN_ES ;
 int es_format_Init (int *,int ,int ) ;
 scalar_t__ likely (int const*) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static void MP4_TrackInit( mp4_track_t *p_track, const MP4_Box_t *p_trackbox )
{
    memset( p_track, 0, sizeof(mp4_track_t) );
    es_format_Init( &p_track->fmt, UNKNOWN_ES, 0 );
    p_track->i_timescale = 1;
    p_track->p_track = p_trackbox;
    const MP4_Box_t *p_tkhd = MP4_BoxGet( p_trackbox, "tkhd" );
    if(likely(p_tkhd) && BOXDATA(p_tkhd))
        p_track->i_track_ID = BOXDATA(p_tkhd)->i_track_ID;
}
