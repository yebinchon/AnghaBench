
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_3__* p_sys; } ;
typedef TYPE_2__ demux_t ;
struct TYPE_7__ {TYPE_4__** p_overlays; } ;
struct TYPE_9__ {TYPE_1__ bdj; int p_out; } ;
typedef TYPE_3__ demux_sys_t ;
struct TYPE_10__ {int p_regions; int lock; scalar_t__ p_updater; } ;
typedef TYPE_4__ bluray_overlay_t ;


 int BLURAY_ES_OUT_CONTROL_DELETE_OVERLAY ;
 int es_out_Control (int ,int ,int) ;
 int free (TYPE_4__*) ;
 int subpicture_region_ChainDelete (int ) ;
 int unref_subpicture_updater (scalar_t__) ;
 int vlc_mutex_destroy (int *) ;

__attribute__((used)) static void blurayCloseOverlay(demux_t *p_demux, int plane)
{
    demux_sys_t *p_sys = p_demux->p_sys;
    bluray_overlay_t *ov = p_sys->bdj.p_overlays[plane];

    if (ov != ((void*)0)) {


        if (ov->p_updater) {
            unref_subpicture_updater(ov->p_updater);
        }


        es_out_Control(p_sys->p_out, BLURAY_ES_OUT_CONTROL_DELETE_OVERLAY, plane);

        vlc_mutex_destroy(&ov->lock);
        subpicture_region_ChainDelete(ov->p_regions);
        free(ov);

        p_sys->bdj.p_overlays[plane] = ((void*)0);
    }
}
