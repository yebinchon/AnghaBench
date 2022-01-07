
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int gpointer ;
typedef int gboolean ;
struct TYPE_11__ {int member_0; } ;
struct TYPE_10__ {scalar_t__ p_dec; int (* new_caps ) (int ,int *,int ) ;int vinfo; } ;
typedef TYPE_1__ GstVlcVideoSink ;
typedef int GstVideoInfo ;
typedef int GstCaps ;
typedef int GstBaseSink ;
typedef TYPE_2__ GValue ;


 int FALSE ;
 int GST_ELEMENT_CAST (TYPE_1__*) ;
 int GST_TYPE_CAPS ;
 int GST_TYPE_ELEMENT ;
 TYPE_1__* GST_VLC_VIDEO_SINK (int *) ;
 size_t SIGNAL_NEW_CAPS ;
 int g_signal_emitv (TYPE_2__*,int ,int ,int *) ;
 int g_value_init (TYPE_2__*,int ) ;
 int g_value_set_boxed (TYPE_2__*,int *) ;
 int g_value_set_object (TYPE_2__*,TYPE_1__*) ;
 int gst_video_info_from_caps (int *,int *) ;
 int * gst_vlc_video_sink_signals ;
 int stub1 (int ,int *,int ) ;

__attribute__((used)) static gboolean gst_vlc_video_sink_setcaps( GstBaseSink *p_basesink,
        GstCaps *p_caps )
{
    GstVlcVideoSink *p_vsink = GST_VLC_VIDEO_SINK( p_basesink );
    GstVideoInfo info;
    gboolean b_ret = FALSE;







    if( !gst_video_info_from_caps( &info, p_caps ))
        return FALSE;

    p_vsink->vinfo = info;
    b_ret = p_vsink->new_caps( GST_ELEMENT_CAST( p_vsink ), p_caps,
            (gpointer) p_vsink->p_dec );


    return b_ret;
}
