
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_tick_t ;
typedef int int64_t ;
struct TYPE_3__ {int i_samplesize; int i_scale; int i_rate; } ;
typedef TYPE_1__ avi_track_t ;


 int AVI_Rescale (int,int ,int ) ;
 int CLOCK_FREQ ;

__attribute__((used)) static vlc_tick_t AVI_GetDPTS( avi_track_t *tk, int64_t i_count )
{
    vlc_tick_t i_dpts = 0;

    if( !tk->i_rate )
        return 0;

    if( !tk->i_scale )
        return 0;

    i_dpts = AVI_Rescale( CLOCK_FREQ * i_count, tk->i_rate, tk->i_scale );

    if( tk->i_samplesize )
    {
        return i_dpts / tk->i_samplesize;
    }
    return i_dpts;
}
