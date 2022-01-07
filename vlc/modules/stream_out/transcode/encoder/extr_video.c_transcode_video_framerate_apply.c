
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ i_frame_rate_base; scalar_t__ i_frame_rate; } ;
typedef TYPE_1__ video_format_t ;


 scalar_t__ ENC_FRAMERATE ;
 scalar_t__ ENC_FRAMERATE_BASE ;
 int vlc_ureduce (scalar_t__*,scalar_t__*,scalar_t__,scalar_t__,int ) ;

__attribute__((used)) static void transcode_video_framerate_apply( const video_format_t *p_src,
                                             video_format_t *p_dst )
{

    if( !p_dst->i_frame_rate || !p_dst->i_frame_rate_base )
    {
        p_dst->i_frame_rate = p_src->i_frame_rate;
        p_dst->i_frame_rate_base = p_src->i_frame_rate_base;

        if( !p_dst->i_frame_rate || !p_dst->i_frame_rate_base )
        {

            p_dst->i_frame_rate = ENC_FRAMERATE;
            p_dst->i_frame_rate_base = ENC_FRAMERATE_BASE;
        }
    }

    vlc_ureduce( &p_dst->i_frame_rate, &p_dst->i_frame_rate_base,
                  p_dst->i_frame_rate, p_dst->i_frame_rate_base, 0 );
}
