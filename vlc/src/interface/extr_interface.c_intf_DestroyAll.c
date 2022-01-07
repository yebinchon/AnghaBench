
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int lock; TYPE_2__* interfaces; } ;
typedef TYPE_1__ libvlc_priv_t ;
typedef int libvlc_int_t ;
struct TYPE_8__ {int p_cfg; int p_module; struct TYPE_8__* p_next; } ;
typedef TYPE_2__ intf_thread_t ;


 int AddIntfCallback ;
 int config_ChainDestroy (int ) ;
 TYPE_1__* libvlc_priv (int *) ;
 int module_unneed (TYPE_2__*,int ) ;
 int var_DelCallback (TYPE_2__*,char*,int ,int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;
 int vlc_object_delete (TYPE_2__*) ;

void intf_DestroyAll(libvlc_int_t *libvlc)
{
    libvlc_priv_t *priv = libvlc_priv(libvlc);

    vlc_mutex_lock(&priv->lock);
    intf_thread_t *intf, **pp = &priv->interfaces;

    while ((intf = *pp) != ((void*)0))
    {
        *pp = intf->p_next;
        vlc_mutex_unlock(&priv->lock);

        module_unneed(intf, intf->p_module);
        config_ChainDestroy(intf->p_cfg);
        var_DelCallback(intf, "intf-add", AddIntfCallback, ((void*)0));
        vlc_object_delete(intf);

        vlc_mutex_lock(&priv->lock);
    }
    vlc_mutex_unlock(&priv->lock);
}
