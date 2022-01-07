
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xcb_connection_t ;
typedef int vlc_probe_t ;
typedef int vlc_object_t ;


 int N_ (char*) ;
 int SD_CAT_DEVICES ;
 int VLC_PROBE_CONTINUE ;
 int free (char*) ;
 char* var_InheritString (int *,char*) ;
 int vlc_sd_probe_Add (int *,char*,int ,int ) ;
 int * xcb_connect (char*,int *) ;
 scalar_t__ xcb_connection_has_error (int *) ;
 int xcb_disconnect (int *) ;

__attribute__((used)) static int vlc_sd_probe_Open (vlc_object_t *obj)
{
    vlc_probe_t *probe = (vlc_probe_t *)obj;

    char *display = var_InheritString (obj, "x11-display");
    xcb_connection_t *conn = xcb_connect (display, ((void*)0));
    free (display);
    if (xcb_connection_has_error (conn))
        return VLC_PROBE_CONTINUE;
    xcb_disconnect (conn);
    return vlc_sd_probe_Add (probe, "xcb_apps",
                             N_("Screen capture"), SD_CAT_DEVICES);
}
