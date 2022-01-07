
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int (* finalize ) (int *) ;} ;
struct TYPE_4__ {scalar_t__ p_allocator; } ;
typedef TYPE_1__ GstVlcVideoSink ;
typedef int GObject ;


 TYPE_1__* GST_VLC_VIDEO_SINK (int *) ;
 TYPE_2__* G_OBJECT_CLASS (int ) ;
 int gst_object_unref (scalar_t__) ;
 int parent_class ;
 int stub1 (int *) ;

__attribute__((used)) static void gst_vlc_video_sink_finalize( GObject *p_obj )
{
    GstVlcVideoSink *p_vsink = GST_VLC_VIDEO_SINK( p_obj );

    if( p_vsink->p_allocator )
        gst_object_unref( p_vsink->p_allocator );

    G_OBJECT_CLASS( parent_class)->finalize( p_obj );
}
