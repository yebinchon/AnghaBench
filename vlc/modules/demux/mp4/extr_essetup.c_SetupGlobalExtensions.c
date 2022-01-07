
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int i_bitrate; } ;
struct TYPE_6__ {TYPE_1__ fmt; } ;
typedef TYPE_2__ mp4_track_t ;
struct TYPE_7__ {int i_avg_bitrate; } ;
typedef int MP4_Box_t ;


 TYPE_4__* BOXDATA (int const*) ;
 int * MP4_BoxGet (int *,char*) ;

__attribute__((used)) static void SetupGlobalExtensions( mp4_track_t *p_track, MP4_Box_t *p_sample )
{
    if( !p_track->fmt.i_bitrate )
    {
        const MP4_Box_t *p_btrt = MP4_BoxGet( p_sample, "btrt" );
        if( p_btrt && BOXDATA(p_btrt) )
        {
            p_track->fmt.i_bitrate = BOXDATA(p_btrt)->i_avg_bitrate;
        }
    }
}
