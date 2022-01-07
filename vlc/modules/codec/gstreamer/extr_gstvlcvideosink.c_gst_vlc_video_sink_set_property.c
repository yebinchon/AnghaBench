
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int guint ;
typedef int decoder_t ;
struct TYPE_3__ {int b_use_pool; int * p_dec; int p_allocator; } ;
typedef TYPE_1__ GstVlcVideoSink ;
typedef int GstAllocator ;
typedef int GValue ;
typedef int GParamSpec ;
typedef int GObject ;


 int GST_IS_VLC_PICTURE_PLANE_ALLOCATOR (int *) ;
 TYPE_1__* GST_VLC_VIDEO_SINK (int *) ;



 int VLC_UNUSED (int *) ;
 int g_value_get_boolean (int const*) ;
 scalar_t__ g_value_get_pointer (int const*) ;
 int gst_object_ref (int *) ;
 int gst_object_unref (int ) ;
 int msg_Err (int *,char*) ;

__attribute__((used)) static void gst_vlc_video_sink_set_property( GObject *p_object, guint i_prop_id,
        const GValue *p_value, GParamSpec *p_pspec )
{
    VLC_UNUSED( p_pspec );

    GstVlcVideoSink *p_vsink = GST_VLC_VIDEO_SINK( p_object );

    switch( i_prop_id )
    {
        case 130:
        {
            GstAllocator *p_allocator = (GstAllocator*) g_value_get_pointer(
                    p_value );
            if( GST_IS_VLC_PICTURE_PLANE_ALLOCATOR( p_allocator ))
            {
                if( p_vsink->p_allocator )
                    gst_object_unref( p_vsink->p_allocator );
                p_vsink->p_allocator = gst_object_ref( p_allocator );
            } else
                msg_Err( p_vsink->p_dec, "Invalid Allocator set");
        }
        break;

        case 129:
        {
            p_vsink->p_dec = (decoder_t*) g_value_get_pointer( p_value );
        }
        break;

        case 128:
        {
            p_vsink->b_use_pool = g_value_get_boolean( p_value );
        }
        break;

        default:
        break;
    }
}
