
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int b_use_pool; } ;
typedef TYPE_1__ GstVlcVideoSink ;


 int FALSE ;
 int GST_BASE_SINK (TYPE_1__*) ;
 int gst_base_sink_set_sync (int ,int ) ;

__attribute__((used)) static void gst_vlc_video_sink_init( GstVlcVideoSink *p_vlc_video_sink )
{
    p_vlc_video_sink->b_use_pool = FALSE;
    gst_base_sink_set_sync( GST_BASE_SINK( p_vlc_video_sink), FALSE );
}
