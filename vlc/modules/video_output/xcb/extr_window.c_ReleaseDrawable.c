
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ xcb_window_t ;
typedef int vlc_object_t ;


 int * VLC_OBJECT (int ) ;
 int assert (scalar_t__) ;
 int free (scalar_t__*) ;
 int serializer ;
 int var_Destroy (int *,char*) ;
 scalar_t__* var_GetAddress (int *,char*) ;
 int var_SetAddress (int *,char*,int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;
 int vlc_object_instance (int *) ;

__attribute__((used)) static void ReleaseDrawable (vlc_object_t *obj, xcb_window_t window)
{
    vlc_object_t *vlc = VLC_OBJECT(vlc_object_instance(obj));
    xcb_window_t *used;
    size_t n = 0;

    vlc_mutex_lock (&serializer);
    used = var_GetAddress(vlc, "xid-in-use");
    assert (used);
    while (used[n] != window)
    {
        assert (used[n]);
        n++;
    }
    do
        used[n] = used[n + 1];
    while (used[++n]);

    if (!used[0])
        var_SetAddress(vlc, "xid-in-use", ((void*)0));
    else
        used = ((void*)0);

    vlc_mutex_unlock (&serializer);

    free( used );


    var_Destroy(vlc, "xid-in-use");
}
