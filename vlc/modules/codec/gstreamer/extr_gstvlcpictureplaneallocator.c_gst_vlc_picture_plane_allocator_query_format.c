
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int video_format_t ;
typedef int picture_t ;
struct TYPE_7__ {int video; } ;
struct TYPE_8__ {TYPE_1__ fmt_out; } ;
typedef TYPE_2__ decoder_t ;
struct TYPE_9__ {TYPE_2__* p_dec; int pic_info; } ;
typedef TYPE_3__ GstVlcPicturePlaneAllocator ;
typedef int GstVideoInfo ;
typedef int GstVideoAlignment ;
typedef int GstCaps ;


 int gst_vlc_video_info_from_vout (int *,int *,int *,TYPE_2__*,int *) ;
 int msg_Err (TYPE_2__*,char*) ;
 int video_format_Clean (int *) ;
 int video_format_Init (int *,int ) ;

bool gst_vlc_picture_plane_allocator_query_format(
        GstVlcPicturePlaneAllocator *p_allocator, GstVideoInfo *p_info,
        GstVideoAlignment *p_align, GstCaps *p_caps )
{
    decoder_t *p_dec = p_allocator->p_dec;
    video_format_t v_fmt;
    picture_t *p_pic_info = &p_allocator->pic_info;


    v_fmt = p_dec->fmt_out.video;
    video_format_Init( &p_dec->fmt_out.video, 0 );

    bool b_ret =
        gst_vlc_video_info_from_vout( p_info, p_align, p_caps, p_dec,
                p_pic_info );

    video_format_Clean( &p_dec->fmt_out.video );


    p_dec->fmt_out.video = v_fmt;

    if( !b_ret )
    {
        msg_Err( p_allocator->p_dec, "failed to get the vout info" );
        return 0;
    }

    return 1;
}
