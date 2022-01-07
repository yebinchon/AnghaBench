
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int gsize ;
typedef int gint ;
struct TYPE_3__ {int p_dec; int p_allocator; } ;
typedef TYPE_1__ GstVlcVideoSink ;
typedef int GstVlcVideoPool ;
typedef int GstStructure ;
typedef int GstCaps ;


 int GST_BUFFER_POOL_CAST (int *) ;
 int gst_buffer_pool_config_set_params (int *,int *,int ,int ,int ) ;
 int * gst_buffer_pool_get_config (int ) ;
 int gst_buffer_pool_set_config (int ,int *) ;
 int gst_object_unref (int *) ;
 int * gst_vlc_video_pool_new (int ,int ) ;

__attribute__((used)) static GstVlcVideoPool* gst_vlc_video_sink_create_pool(
        GstVlcVideoSink *p_vsink, GstCaps *p_caps, gsize i_size, gint i_min )
{
    GstVlcVideoPool *p_pool;
    GstStructure *p_config;

    p_pool = gst_vlc_video_pool_new( p_vsink->p_allocator, p_vsink->p_dec );

    p_config = gst_buffer_pool_get_config( GST_BUFFER_POOL_CAST( p_pool ));
    gst_buffer_pool_config_set_params( p_config, p_caps, i_size, i_min, 0);

    if( !gst_buffer_pool_set_config( GST_BUFFER_POOL_CAST( p_pool ), p_config ))
        goto config_failed;

    return p_pool;

config_failed:
    {
        gst_object_unref (p_pool);
        return ((void*)0);
    }
}
