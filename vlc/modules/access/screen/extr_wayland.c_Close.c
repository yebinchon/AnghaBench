
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ demux_t ;
struct TYPE_5__ {int display; int output; int shm; int screenshooter; int thread; } ;
typedef TYPE_2__ demux_sys_t ;


 int free (TYPE_2__*) ;
 int screenshooter_destroy (int ) ;
 int vlc_cancel (int ) ;
 int vlc_join (int ,int *) ;
 int wl_display_disconnect (int ) ;
 int wl_output_destroy (int ) ;
 int wl_shm_destroy (int ) ;

__attribute__((used)) static void Close(vlc_object_t *obj)
{
    demux_t *demux = (demux_t *)obj;
    demux_sys_t *sys = demux->p_sys;

    vlc_cancel(sys->thread);
    vlc_join(sys->thread, ((void*)0));

    screenshooter_destroy(sys->screenshooter);
    wl_shm_destroy(sys->shm);
    wl_output_destroy(sys->output);
    wl_display_disconnect(sys->display);
    free(sys);
}
