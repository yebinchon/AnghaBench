
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int finalize; } ;
struct TYPE_3__ {int release_buffer; int acquire_buffer; int free_buffer; int alloc_buffer; int set_config; int get_options; int start; } ;
typedef int GstVlcVideoPoolClass ;
typedef TYPE_1__ GstBufferPoolClass ;
typedef TYPE_2__ GObjectClass ;


 int gst_vlc_video_pool_acquire_buffer ;
 int gst_vlc_video_pool_alloc_buffer ;
 int gst_vlc_video_pool_finalize ;
 int gst_vlc_video_pool_free_buffer ;
 int gst_vlc_video_pool_get_options ;
 int gst_vlc_video_pool_release_buffer ;
 int gst_vlc_video_pool_set_config ;
 int gst_vlc_video_pool_start ;

__attribute__((used)) static void gst_vlc_video_pool_class_init( GstVlcVideoPoolClass *p_klass )
{
    GObjectClass *p_gobject_class = ( GObjectClass* )p_klass;
    GstBufferPoolClass *p_gstbufferpool_class = ( GstBufferPoolClass* )p_klass;

    p_gobject_class->finalize = gst_vlc_video_pool_finalize;

    p_gstbufferpool_class->start = gst_vlc_video_pool_start;
    p_gstbufferpool_class->get_options = gst_vlc_video_pool_get_options;
    p_gstbufferpool_class->set_config = gst_vlc_video_pool_set_config;
    p_gstbufferpool_class->alloc_buffer = gst_vlc_video_pool_alloc_buffer;
    p_gstbufferpool_class->free_buffer = gst_vlc_video_pool_free_buffer;
    p_gstbufferpool_class->acquire_buffer = gst_vlc_video_pool_acquire_buffer;
    p_gstbufferpool_class->release_buffer = gst_vlc_video_pool_release_buffer;
}
