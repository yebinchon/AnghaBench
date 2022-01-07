
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ (* acquire_buffer ) (int *,int **,int *) ;} ;
struct TYPE_4__ {int p_allocator; } ;
typedef TYPE_1__ GstVlcVideoPool ;
typedef scalar_t__ GstFlowReturn ;
typedef int GstBufferPoolAcquireParams ;
typedef int GstBufferPool ;
typedef int GstBuffer ;


 TYPE_3__* GST_BUFFER_POOL_CLASS (int ) ;
 scalar_t__ GST_FLOW_EOS ;
 scalar_t__ GST_FLOW_OK ;
 TYPE_1__* GST_VLC_VIDEO_POOL_CAST (int *) ;
 int gst_vlc_picture_plane_allocator_hold (int ,int *) ;
 int parent_class ;
 scalar_t__ stub1 (int *,int **,int *) ;

__attribute__((used)) static GstFlowReturn gst_vlc_video_pool_acquire_buffer( GstBufferPool *p_pool,
        GstBuffer **p_buffer, GstBufferPoolAcquireParams *p_params )
{
    GstVlcVideoPool *p_vpool = GST_VLC_VIDEO_POOL_CAST( p_pool );
    GstFlowReturn result;

    result = GST_BUFFER_POOL_CLASS( parent_class)->acquire_buffer( p_pool,
            p_buffer, p_params );

    if( result == GST_FLOW_OK &&
            !gst_vlc_picture_plane_allocator_hold( p_vpool->p_allocator,
                *p_buffer ))
        result = GST_FLOW_EOS;

    return result;
}
