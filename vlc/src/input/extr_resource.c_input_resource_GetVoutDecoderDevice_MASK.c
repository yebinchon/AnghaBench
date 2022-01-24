#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vout_thread_t ;
struct TYPE_6__ {int /*<<< orphan*/ * vout; int /*<<< orphan*/ * fmt; } ;
typedef  TYPE_1__ vout_device_configuration_t ;
typedef  int /*<<< orphan*/  vlc_object_t ;
typedef  int /*<<< orphan*/  vlc_decoder_device ;
struct TYPE_7__ {scalar_t__ i_vout; int /*<<< orphan*/  lock; int /*<<< orphan*/ * p_vout_free; int /*<<< orphan*/ ** pp_vout; int /*<<< orphan*/  lock_hold; int /*<<< orphan*/ * p_parent; int /*<<< orphan*/  p_vout_dummy; } ;
typedef  TYPE_2__ input_resource_t ;
typedef  enum vlc_vout_order { ____Placeholder_vlc_vout_order } vlc_vout_order ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int VLC_VOUT_ORDER_PRIMARY ; 
 int VLC_VOUT_ORDER_SECONDARY ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_1__ const*) ; 

vout_thread_t *FUNC9(input_resource_t *p_resource,
                                      const vout_device_configuration_t *cfg,
                                      enum vlc_vout_order *order,
                                      vlc_decoder_device **pp_dec_dev)
{
    vout_device_configuration_t cfg_buf;
    vout_thread_t *vout;

    FUNC3(cfg != NULL);
    FUNC3(cfg->fmt != NULL);
    FUNC5( &p_resource->lock );

    if (cfg->vout == NULL) {
        cfg_buf = *cfg;
        cfg_buf.vout = p_resource->p_vout_free;
        p_resource->p_vout_free = NULL;
        cfg = &cfg_buf;

        if (cfg_buf.vout == NULL) {
            /* Use the dummy vout as the parent of the future main vout. This
             * will allow the future vout to inherit all parameters
             * pre-configured on this dummy vout. */
            vlc_object_t *parent = p_resource->i_vout == 0 ?
                FUNC2(p_resource->p_vout_dummy) : p_resource->p_parent;
            cfg_buf.vout = vout = FUNC7(parent);
            if (vout == NULL)
                goto out;

            FUNC5(&p_resource->lock_hold);
            *order = p_resource->i_vout == 0 ? VLC_VOUT_ORDER_PRIMARY
                                             : VLC_VOUT_ORDER_SECONDARY;
            FUNC0(p_resource->i_vout, p_resource->pp_vout, vout);
            FUNC6(&p_resource->lock_hold);
        } else
        {
            /* The free vout is always the first one */
            *order = VLC_VOUT_ORDER_PRIMARY;
            FUNC4(p_resource->p_parent, "trying to reuse free vout");
        }
    }
    else
    {
        FUNC5(&p_resource->lock_hold);
        FUNC3(p_resource->i_vout > 0);
        *order = p_resource->pp_vout[0] == cfg->vout ? VLC_VOUT_ORDER_PRIMARY
                                                     : VLC_VOUT_ORDER_SECONDARY;
        FUNC6(&p_resource->lock_hold);
    }

#ifndef NDEBUG
    {
        int index;
        FUNC1(p_resource->i_vout, p_resource->pp_vout, cfg->vout, index );
        FUNC3(index >= 0);
        FUNC3(p_resource->p_vout_free == NULL || p_resource->p_vout_free == cfg->vout);
    }
#endif

    if (pp_dec_dev)
    {
        *pp_dec_dev = FUNC8(cfg);
    }

    vout = cfg->vout;

out:
    FUNC6( &p_resource->lock );
    return vout;
}