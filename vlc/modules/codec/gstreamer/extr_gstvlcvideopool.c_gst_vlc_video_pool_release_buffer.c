
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int (* release_buffer ) (int *,int *) ;} ;
struct TYPE_4__ {int p_allocator; } ;
typedef TYPE_1__ GstVlcVideoPool ;
typedef int GstBufferPool ;
typedef int GstBuffer ;


 TYPE_3__* GST_BUFFER_POOL_CLASS (int ) ;
 TYPE_1__* GST_VLC_VIDEO_POOL_CAST (int *) ;
 int gst_vlc_picture_plane_allocator_release (int ,int *) ;
 int parent_class ;
 int stub1 (int *,int *) ;

__attribute__((used)) static void gst_vlc_video_pool_release_buffer( GstBufferPool *p_pool,
        GstBuffer *p_buffer )
{
    GstVlcVideoPool* p_vpool = GST_VLC_VIDEO_POOL_CAST( p_pool );

    gst_vlc_picture_plane_allocator_release( p_vpool->p_allocator, p_buffer );

    GST_BUFFER_POOL_CLASS( parent_class )->release_buffer( p_pool, p_buffer );

    return;
}
