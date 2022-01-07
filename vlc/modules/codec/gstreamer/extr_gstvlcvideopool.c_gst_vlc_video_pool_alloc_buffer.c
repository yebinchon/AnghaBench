
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int stride; int offset; } ;
struct TYPE_8__ {int p_dec; scalar_t__ b_add_metavideo; int p_allocator; TYPE_2__ info; } ;
typedef TYPE_1__ GstVlcVideoPool ;
typedef TYPE_2__ GstVideoInfo ;
typedef int GstFlowReturn ;
typedef int GstBufferPoolAcquireParams ;
typedef int GstBufferPool ;
typedef int GstBuffer ;


 int GST_FLOW_EOS ;
 int GST_FLOW_OK ;
 int GST_VIDEO_FRAME_FLAG_NONE ;
 int GST_VIDEO_INFO_FORMAT (TYPE_2__*) ;
 int GST_VIDEO_INFO_HEIGHT (TYPE_2__*) ;
 int GST_VIDEO_INFO_N_PLANES (TYPE_2__*) ;
 int GST_VIDEO_INFO_WIDTH (TYPE_2__*) ;
 TYPE_1__* GST_VLC_VIDEO_POOL_CAST (int *) ;
 int VLC_UNUSED (int *) ;
 int gst_buffer_add_video_meta_full (int *,int ,int ,int ,int ,int ,int ,int ) ;
 int * gst_buffer_new () ;
 int gst_vlc_picture_plane_allocator_alloc (int ,int *) ;
 int msg_Dbg (int ,char*,...) ;
 int msg_Err (int ,char*) ;

__attribute__((used)) static GstFlowReturn gst_vlc_video_pool_alloc_buffer( GstBufferPool *p_pool,
        GstBuffer **p_buffer, GstBufferPoolAcquireParams *p_params)
{
    VLC_UNUSED( p_params );

    GstVlcVideoPool *p_vpool = GST_VLC_VIDEO_POOL_CAST( p_pool );
    GstVideoInfo *p_info = &p_vpool->info;

    *p_buffer = gst_buffer_new( );

    if( !gst_vlc_picture_plane_allocator_alloc( p_vpool->p_allocator,
                *p_buffer ))
    {
        msg_Err( p_vpool->p_dec, "buffer allocation failed" );
        return GST_FLOW_EOS;
    }

    if( p_vpool->b_add_metavideo )
    {
        msg_Dbg( p_vpool->p_dec, "meta video enabled" );
        gst_buffer_add_video_meta_full( *p_buffer, GST_VIDEO_FRAME_FLAG_NONE,
                GST_VIDEO_INFO_FORMAT( p_info ), GST_VIDEO_INFO_WIDTH( p_info ),
                GST_VIDEO_INFO_HEIGHT( p_info ),
                GST_VIDEO_INFO_N_PLANES( p_info ),
                p_info->offset, p_info->stride );
    }

    msg_Dbg( p_vpool->p_dec, "allocated buffer %p", *p_buffer );

    return GST_FLOW_OK;
}
