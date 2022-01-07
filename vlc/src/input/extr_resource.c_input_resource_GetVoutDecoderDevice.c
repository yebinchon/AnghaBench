
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vout_thread_t ;
struct TYPE_6__ {int * vout; int * fmt; } ;
typedef TYPE_1__ vout_device_configuration_t ;
typedef int vlc_object_t ;
typedef int vlc_decoder_device ;
struct TYPE_7__ {scalar_t__ i_vout; int lock; int * p_vout_free; int ** pp_vout; int lock_hold; int * p_parent; int p_vout_dummy; } ;
typedef TYPE_2__ input_resource_t ;
typedef enum vlc_vout_order { ____Placeholder_vlc_vout_order } vlc_vout_order ;


 int TAB_APPEND (scalar_t__,int **,int *) ;
 int TAB_FIND (scalar_t__,int **,int *,int) ;
 int * VLC_OBJECT (int ) ;
 int VLC_VOUT_ORDER_PRIMARY ;
 int VLC_VOUT_ORDER_SECONDARY ;
 int assert (int) ;
 int msg_Dbg (int *,char*) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;
 int * vout_Create (int *) ;
 int * vout_GetDevice (TYPE_1__ const*) ;

vout_thread_t *input_resource_GetVoutDecoderDevice(input_resource_t *p_resource,
                                      const vout_device_configuration_t *cfg,
                                      enum vlc_vout_order *order,
                                      vlc_decoder_device **pp_dec_dev)
{
    vout_device_configuration_t cfg_buf;
    vout_thread_t *vout;

    assert(cfg != ((void*)0));
    assert(cfg->fmt != ((void*)0));
    vlc_mutex_lock( &p_resource->lock );

    if (cfg->vout == ((void*)0)) {
        cfg_buf = *cfg;
        cfg_buf.vout = p_resource->p_vout_free;
        p_resource->p_vout_free = ((void*)0);
        cfg = &cfg_buf;

        if (cfg_buf.vout == ((void*)0)) {



            vlc_object_t *parent = p_resource->i_vout == 0 ?
                VLC_OBJECT(p_resource->p_vout_dummy) : p_resource->p_parent;
            cfg_buf.vout = vout = vout_Create(parent);
            if (vout == ((void*)0))
                goto out;

            vlc_mutex_lock(&p_resource->lock_hold);
            *order = p_resource->i_vout == 0 ? VLC_VOUT_ORDER_PRIMARY
                                             : VLC_VOUT_ORDER_SECONDARY;
            TAB_APPEND(p_resource->i_vout, p_resource->pp_vout, vout);
            vlc_mutex_unlock(&p_resource->lock_hold);
        } else
        {

            *order = VLC_VOUT_ORDER_PRIMARY;
            msg_Dbg(p_resource->p_parent, "trying to reuse free vout");
        }
    }
    else
    {
        vlc_mutex_lock(&p_resource->lock_hold);
        assert(p_resource->i_vout > 0);
        *order = p_resource->pp_vout[0] == cfg->vout ? VLC_VOUT_ORDER_PRIMARY
                                                     : VLC_VOUT_ORDER_SECONDARY;
        vlc_mutex_unlock(&p_resource->lock_hold);
    }


    {
        int index;
        TAB_FIND(p_resource->i_vout, p_resource->pp_vout, cfg->vout, index );
        assert(index >= 0);
        assert(p_resource->p_vout_free == ((void*)0) || p_resource->p_vout_free == cfg->vout);
    }


    if (pp_dec_dev)
    {
        *pp_dec_dev = vout_GetDevice(cfg);
    }

    vout = cfg->vout;

out:
    vlc_mutex_unlock( &p_resource->lock );
    return vout;
}
