
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int vlc_fourcc_t ;
struct TYPE_9__ {int i_x_offset; int i_y_offset; int i_frame_rate_base; int i_frame_rate; } ;
typedef TYPE_1__ video_format_t ;
struct TYPE_10__ {int i_codec; TYPE_1__ video; } ;
typedef TYPE_2__ es_format_t ;
struct TYPE_11__ {TYPE_2__ fmt_out; } ;
typedef TYPE_3__ decoder_t ;
struct TYPE_12__ {int padding_left; int padding_right; int padding_top; int padding_bottom; } ;
typedef int GstVideoInfo ;
typedef TYPE_4__ GstVideoAlignment ;
typedef int GstStructure ;
typedef int GstCaps ;


 int GST_VIDEO_INFO_FPS_D (int *) ;
 int GST_VIDEO_INFO_FPS_N (int *) ;
 int GST_VIDEO_INFO_HEIGHT (int *) ;
 int GST_VIDEO_INFO_PAR_D (int *) ;
 int GST_VIDEO_INFO_PAR_N (int *) ;
 int GST_VIDEO_INFO_WIDTH (int *) ;
 int VIDEO_ES ;
 int * gst_caps_get_structure (int *,int ) ;
 int gst_structure_get_string (int *,char*) ;
 int msg_Err (TYPE_3__*,char*) ;
 int video_format_Setup (TYPE_1__*,int ,int,int,int,int,int ,int ) ;
 int vlc_fourcc_GetCodecFromString (int ,int ) ;

bool gst_vlc_set_vout_fmt( GstVideoInfo *p_info, GstVideoAlignment *p_align,
        GstCaps *p_caps, decoder_t *p_dec )
{
    es_format_t *p_outfmt = &p_dec->fmt_out;
    video_format_t *p_voutfmt = &p_dec->fmt_out.video;
    GstStructure *p_str = gst_caps_get_structure( p_caps, 0 );
    vlc_fourcc_t i_chroma;
    int i_padded_width, i_padded_height;

    i_chroma = p_outfmt->i_codec = vlc_fourcc_GetCodecFromString(
            VIDEO_ES,
            gst_structure_get_string( p_str, "format" ) );
    if( !i_chroma )
    {
        msg_Err( p_dec, "video chroma type not supported" );
        return 0;
    }

    i_padded_width = GST_VIDEO_INFO_WIDTH( p_info ) + p_align->padding_left +
        p_align->padding_right;
    i_padded_height = GST_VIDEO_INFO_HEIGHT( p_info ) + p_align->padding_top +
        p_align->padding_bottom;

    video_format_Setup( p_voutfmt, i_chroma, i_padded_width, i_padded_height,
            GST_VIDEO_INFO_WIDTH( p_info ), GST_VIDEO_INFO_HEIGHT( p_info ),
            GST_VIDEO_INFO_PAR_N( p_info ), GST_VIDEO_INFO_PAR_D( p_info ));
    p_voutfmt->i_x_offset = p_align->padding_left;
    p_voutfmt->i_y_offset = p_align->padding_top;

    p_voutfmt->i_frame_rate = GST_VIDEO_INFO_FPS_N( p_info );
    p_voutfmt->i_frame_rate_base = GST_VIDEO_INFO_FPS_D( p_info );

    return 1;
}
