
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int i_sar_den; scalar_t__ i_sar_num; int i_frame_rate_base; scalar_t__ i_frame_rate; scalar_t__ i_height; scalar_t__ i_width; } ;
typedef TYPE_1__ video_format_t ;
struct TYPE_5__ {int i_codec; scalar_t__ i_extra; int p_extra; TYPE_1__ video; } ;
typedef TYPE_2__ es_format_t ;
typedef int GstStructure ;
typedef char GstBuffer ;


 int FALSE ;
 int GST_MEMORY_FLAG_READONLY ;
 int GST_TYPE_BUFFER ;
 int GST_TYPE_FRACTION ;
 int G_TYPE_BOOLEAN ;
 int G_TYPE_INT ;
 int G_TYPE_STRING ;
 char* gst_buffer_new_wrapped_full (int ,int ,scalar_t__,int ,scalar_t__,int *,int *) ;
 int gst_buffer_unref (char*) ;
 int gst_structure_free (int *) ;
 int * gst_structure_new_empty (char*) ;
 int gst_structure_set (int *,char*,int ,...) ;

__attribute__((used)) static GstStructure* vlc_to_gst_fmt( const es_format_t *p_fmt )
{
    const video_format_t *p_vfmt = &p_fmt->video;
    GstStructure *p_str = ((void*)0);

    switch( p_fmt->i_codec ){
    case 135:
        p_str = gst_structure_new_empty( "video/x-h264" );
        gst_structure_set( p_str, "alignment", G_TYPE_STRING, "au", ((void*)0) );
        if( p_fmt->i_extra )
            gst_structure_set( p_str, "stream-format", G_TYPE_STRING, "avc",
                    ((void*)0) );
        else
            gst_structure_set( p_str, "stream-format", G_TYPE_STRING,
                    "byte-stream", ((void*)0) );
        break;
    case 134:
        p_str = gst_structure_new_empty( "video/mpeg" );
        gst_structure_set( p_str, "mpegversion", G_TYPE_INT, 4,
                "systemstream", G_TYPE_BOOLEAN, FALSE, ((void*)0) );
        break;
    case 131:
        p_str = gst_structure_new_empty( "video/x-vp8" );
        break;
    case 133:
        p_str = gst_structure_new_empty( "video/mpeg" );
        gst_structure_set( p_str, "mpegversion", G_TYPE_INT, 2,
                "systemstream", G_TYPE_BOOLEAN, FALSE, ((void*)0) );
        break;
    case 136:
        p_str = gst_structure_new_empty( "video/x-flash-video" );
        gst_structure_set( p_str, "flvversion", G_TYPE_INT, 1, ((void*)0) );
        break;
    case 130:
        p_str = gst_structure_new_empty( "video/x-wmv" );
        gst_structure_set( p_str, "wmvversion", G_TYPE_INT, 1,
                "format", G_TYPE_STRING, "WMV1", ((void*)0) );
        break;
    case 129:
        p_str = gst_structure_new_empty( "video/x-wmv" );
        gst_structure_set( p_str, "wmvversion", G_TYPE_INT, 2,
                "format", G_TYPE_STRING, "WMV2", ((void*)0) );
        break;
    case 128:
        p_str = gst_structure_new_empty( "video/x-wmv" );
        gst_structure_set( p_str, "wmvversion", G_TYPE_INT, 3,
                "format", G_TYPE_STRING, "WMV3", ((void*)0) );
        break;
    case 132:
        p_str = gst_structure_new_empty( "video/x-wmv" );
        gst_structure_set( p_str, "wmvversion", G_TYPE_INT, 3,
                "format", G_TYPE_STRING, "WVC1", ((void*)0) );
        break;
    default:

        return ((void*)0);
    }

    if( p_vfmt->i_width && p_vfmt->i_height )
        gst_structure_set( p_str,
                "width", G_TYPE_INT, p_vfmt->i_width,
                "height", G_TYPE_INT, p_vfmt->i_height, ((void*)0) );

    if( p_vfmt->i_frame_rate && p_vfmt->i_frame_rate_base )
        gst_structure_set( p_str, "framerate", GST_TYPE_FRACTION,
                p_vfmt->i_frame_rate,
                p_vfmt->i_frame_rate_base, ((void*)0) );

    if( p_vfmt->i_sar_num && p_vfmt->i_sar_den )
        gst_structure_set( p_str, "pixel-aspect-ratio", GST_TYPE_FRACTION,
                p_vfmt->i_sar_num,
                p_vfmt->i_sar_den, ((void*)0) );

    if( p_fmt->i_extra )
    {
        GstBuffer *p_buf;

        p_buf = gst_buffer_new_wrapped_full( GST_MEMORY_FLAG_READONLY,
                p_fmt->p_extra, p_fmt->i_extra, 0,
                p_fmt->i_extra, ((void*)0), ((void*)0) );
        if( p_buf == ((void*)0) )
        {
            gst_structure_free( p_str );
            return ((void*)0);
        }

        gst_structure_set( p_str, "codec_data", GST_TYPE_BUFFER, p_buf, ((void*)0) );
        gst_buffer_unref( p_buf );
    }

    return p_str;
}
