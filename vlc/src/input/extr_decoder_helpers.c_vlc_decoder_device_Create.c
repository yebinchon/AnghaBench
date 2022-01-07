
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int vout_window_t ;
struct TYPE_6__ {int * ops; } ;
typedef TYPE_1__ vlc_decoder_device ;
struct vlc_decoder_device_priv {TYPE_1__ device; int rc; } ;
typedef int module_t ;


 int assert (int ) ;
 int decoder_device_Open ;
 int free (char*) ;
 char* var_InheritString (int *,char*) ;
 int vlc_atomic_rc_init (int *) ;
 int * vlc_module_load (TYPE_1__*,char*,char*,int,int ,TYPE_1__*,int *) ;
 struct vlc_decoder_device_priv* vlc_object_create (int *,int) ;
 int vlc_object_delete (TYPE_1__*) ;

vlc_decoder_device *
vlc_decoder_device_Create(vout_window_t *window)
{
    struct vlc_decoder_device_priv *priv =
            vlc_object_create(window, sizeof (*priv));
    if (!priv)
        return ((void*)0);
    char *name = var_InheritString(window, "dec-dev");
    module_t *module = vlc_module_load(&priv->device, "decoder device", name,
                                    1, decoder_device_Open, &priv->device,
                                    window);
    free(name);
    if (module == ((void*)0))
    {
        vlc_object_delete(&priv->device);
        return ((void*)0);
    }
    assert(priv->device.ops != ((void*)0));
    vlc_atomic_rc_init(&priv->rc);
    return &priv->device;
}
