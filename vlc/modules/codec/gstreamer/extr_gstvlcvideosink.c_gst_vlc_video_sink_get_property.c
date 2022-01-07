
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int guint ;
struct TYPE_3__ {int b_use_pool; int p_allocator; } ;
typedef TYPE_1__ GstVlcVideoSink ;
typedef int GValue ;
typedef int GParamSpec ;
typedef int GObject ;


 TYPE_1__* GST_VLC_VIDEO_SINK (int *) ;


 int VLC_UNUSED (int *) ;
 int g_value_set_boolean (int *,int ) ;
 int g_value_set_pointer (int *,int ) ;

__attribute__((used)) static void gst_vlc_video_sink_get_property( GObject *p_object, guint i_prop_id,
    GValue *p_value, GParamSpec *p_pspec )
{
    VLC_UNUSED( p_pspec );

    GstVlcVideoSink *p_vsink = GST_VLC_VIDEO_SINK( p_object );

    switch( i_prop_id )
    {
        case 129:
            g_value_set_pointer( p_value, p_vsink->p_allocator );
        break;

        case 128:
            g_value_set_boolean( p_value, p_vsink->b_use_pool );
        break;

        default:
        break;
   }
}
