
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_4__ {int i_visible_width; unsigned int i_width; int i_visible_height; unsigned int i_height; double i_sar_den; scalar_t__ i_sar_num; } ;
typedef TYPE_1__ video_format_t ;


 unsigned int __MAX (int,unsigned int) ;
 unsigned int lroundf (float) ;
 int msg_Dbg (int *,char*,unsigned int,...) ;

__attribute__((used)) static void transcode_video_scale_apply( vlc_object_t *p_obj,
                                        const video_format_t *p_src,
                                        float f_scale,
                                        unsigned i_maxwidth,
                                        unsigned i_maxheight,
                                        video_format_t *p_dst )
{


    unsigned i_src_width = p_src->i_visible_width ? p_src->i_visible_width : p_src->i_width;
    unsigned i_src_height = p_src->i_visible_height ? p_src->i_visible_height : p_src->i_height;


    float f_scale_width = 1;
    float f_scale_height = 1;


    float f_aspect = (double)p_src->i_sar_num * p_src->i_width /
                             p_src->i_sar_den / p_src->i_height;

    msg_Dbg( p_obj, "decoder aspect is %f:1", f_aspect );


    f_aspect = f_aspect * i_src_height / i_src_width;
    msg_Dbg( p_obj, "source pixel aspect is %f:1", f_aspect );


    if( p_dst->i_visible_width == 0 && p_dst->i_visible_height == 0 && f_scale )
    {

        float f_real_scale;
        unsigned i_new_height;
        unsigned i_new_width = i_src_width * f_scale;

        if( i_new_width % 16 <= 7 && i_new_width >= 16 )
            i_new_width -= i_new_width % 16;
        else
            i_new_width += 16 - i_new_width % 16;

        f_real_scale = (float)( i_new_width ) / (float) i_src_width;

        i_new_height = __MAX( 16, i_src_height * (float)f_real_scale );

        f_scale_width = f_real_scale;
        f_scale_height = (float) i_new_height / (float) i_src_height;
    }
    else if( p_dst->i_visible_width && p_dst->i_visible_height == 0 )
    {

        f_scale_width = (float)p_dst->i_visible_width / i_src_width;
        f_scale_height = f_scale_width;
    }
    else if( p_dst->i_visible_width == 0 && p_dst->i_visible_height )
    {

         f_scale_height = (float)p_dst->i_visible_height / i_src_height;
         f_scale_width = f_scale_height;
     }
     else if( p_dst->i_visible_width && p_dst->i_visible_height )
     {

         f_scale_width = (float)p_dst->i_visible_width / i_src_width;
         f_scale_height = (float)p_dst->i_visible_height / i_src_height;
     }


     if( i_maxwidth && f_scale_width > (float)i_maxwidth / i_src_width )
     {
         f_scale_width = (float)i_maxwidth / i_src_width;
     }

     if( i_maxheight && f_scale_height > (float)i_maxheight / i_src_height )
     {
         f_scale_height = (float)i_maxheight / i_src_height;
     }



     f_aspect = f_aspect * f_scale_height / f_scale_width;
     msg_Dbg( p_obj, "scaled pixel aspect is %f:1", f_aspect );






     unsigned i_dst_visible_width = lroundf(f_scale_width*i_src_width);
     unsigned i_dst_visible_height = lroundf(f_scale_height*i_src_height);
     unsigned i_dst_width = lroundf(f_scale_width*p_src->i_width);
     unsigned i_dst_height = lroundf(f_scale_height*p_src->i_height);

     if( i_dst_visible_width & 1 ) ++i_dst_visible_width;
     if( i_dst_visible_height & 1 ) ++i_dst_visible_height;
     if( i_dst_width & 1 ) ++i_dst_width;
     if( i_dst_height & 1 ) ++i_dst_height;


     p_dst->i_width = i_dst_width;
     p_dst->i_visible_width = i_dst_visible_width;
     p_dst->i_height = i_dst_height;
     p_dst->i_visible_height = i_dst_visible_height;

     msg_Dbg( p_obj, "source %ux%u, destination %ux%u",
                     i_src_width, i_src_height,
                     i_dst_visible_width, i_dst_visible_height );
}
