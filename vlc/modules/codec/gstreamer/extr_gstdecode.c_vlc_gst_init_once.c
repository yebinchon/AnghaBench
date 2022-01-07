
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gst_init (int *,int *) ;
 int gst_plugin_register_static (int,int ,char*,char*,int ,char*,char*,char*,char*,char*) ;
 int vlc_gst_plugin_init ;
 int vlc_gst_registered ;

__attribute__((used)) static void vlc_gst_init_once(void)
{
    gst_init( ((void*)0), ((void*)0) );
    vlc_gst_registered = gst_plugin_register_static( 1, 0, "videolan",
                "VLC Gstreamer plugins", vlc_gst_plugin_init,
                "1.0.0", "LGPL", "NA", "vlc", "NA" );
}
