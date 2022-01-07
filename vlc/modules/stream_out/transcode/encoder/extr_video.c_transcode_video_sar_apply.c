
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int i_sar_num; int i_sar_den; int i_x_offset; int i_visible_width; int i_visible_height; int i_y_offset; } ;
typedef TYPE_1__ video_format_t ;
typedef int uint64_t ;


 int vlc_ureduce (int*,int*,int,int,int ) ;

__attribute__((used)) static void transcode_video_sar_apply( const video_format_t *p_src,
                                       video_format_t *p_dst )
{

    if( p_dst->i_sar_num <= 0 || p_dst->i_sar_den <= 0 )
    {
        vlc_ureduce( &p_dst->i_sar_num, &p_dst->i_sar_den,
                     (uint64_t)p_src->i_sar_num * (p_dst->i_x_offset + p_dst->i_visible_width)
                                                * (p_src->i_x_offset + p_src->i_visible_height),
                     (uint64_t)p_src->i_sar_den * (p_dst->i_y_offset + p_dst->i_visible_height)
                                                * (p_src->i_y_offset + p_src->i_visible_width),
                     0 );
    }
    else
    {
        vlc_ureduce( &p_dst->i_sar_num, &p_dst->i_sar_den,
                     p_dst->i_sar_num, p_dst->i_sar_den, 0 );
    }
}
