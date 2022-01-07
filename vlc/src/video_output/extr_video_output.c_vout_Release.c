
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_4__* p; } ;
typedef TYPE_3__ vout_thread_t ;
struct TYPE_8__ {int window; } ;
struct TYPE_7__ {int lock; } ;
struct TYPE_10__ {int original; int snapshot; int statistic; int display_lock; int control; TYPE_2__ display_cfg; int window_enabled; scalar_t__ dec_device; TYPE_1__ filter; int window_lock; int splitter_name; scalar_t__ dummy; int refs; } ;
typedef TYPE_4__ vout_thread_sys_t ;


 int VLC_OBJECT (TYPE_3__*) ;
 int assert (int) ;
 scalar_t__ atomic_fetch_sub_explicit (int *,int,int ) ;
 int free (int ) ;
 int memory_order_release ;
 int video_format_Clean (int *) ;
 int vlc_decoder_device_Release (scalar_t__) ;
 int vlc_mutex_destroy (int *) ;
 int vlc_object_delete (int ) ;
 int vout_control_Clean (int *) ;
 int vout_display_window_Delete (int ) ;
 int vout_snapshot_Destroy (int ) ;
 int vout_statistic_Clean (int *) ;

void vout_Release(vout_thread_t *vout)
{
    vout_thread_sys_t *sys = vout->p;

    if (atomic_fetch_sub_explicit(&sys->refs, 1, memory_order_release))
        return;

    if (sys->dummy)
    {
        vlc_object_delete(VLC_OBJECT(vout));
        return;
    }

    free(sys->splitter_name);


    vlc_mutex_destroy(&sys->window_lock);
    vlc_mutex_destroy(&sys->filter.lock);

    if (sys->dec_device)
        vlc_decoder_device_Release(sys->dec_device);

    assert(!sys->window_enabled);
    vout_display_window_Delete(sys->display_cfg.window);

    vout_control_Clean(&sys->control);
    vlc_mutex_destroy(&sys->display_lock);


    vout_statistic_Clean(&sys->statistic);


    vout_snapshot_Destroy(sys->snapshot);
    video_format_Clean(&sys->original);
    vlc_object_delete(VLC_OBJECT(vout));
}
