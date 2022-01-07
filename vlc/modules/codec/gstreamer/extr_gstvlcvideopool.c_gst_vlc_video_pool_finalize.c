
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int (* finalize ) (int *) ;} ;
struct TYPE_4__ {int p_allocator; } ;
typedef TYPE_1__ GstVlcVideoPool ;
typedef int GObject ;


 TYPE_1__* GST_VLC_VIDEO_POOL_CAST (int *) ;
 TYPE_2__* G_OBJECT_CLASS (int ) ;
 int gst_object_unref (int ) ;
 int parent_class ;
 int stub1 (int *) ;

__attribute__((used)) static void gst_vlc_video_pool_finalize( GObject *p_object )
{
    GstVlcVideoPool *p_pool = GST_VLC_VIDEO_POOL_CAST( p_object );

    gst_object_unref( p_pool->p_allocator );

    G_OBJECT_CLASS( parent_class )->finalize( p_object );
}
