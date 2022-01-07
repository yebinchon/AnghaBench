
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gchar ;
typedef int GstBufferPool ;




 int VLC_UNUSED (int *) ;

__attribute__((used)) static const gchar** gst_vlc_video_pool_get_options (GstBufferPool *p_pool)
{
    VLC_UNUSED( p_pool );

    static const gchar *options[] = { 128,
        129, ((void*)0)
    };

    return options;
}
