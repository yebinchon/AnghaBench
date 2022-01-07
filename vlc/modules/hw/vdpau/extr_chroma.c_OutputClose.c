
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int vdp; int pool; int mixer; } ;
typedef TYPE_1__ vlc_vdp_mixer_t ;
typedef int vlc_object_t ;
struct TYPE_5__ {TYPE_1__* p_sys; } ;
typedef TYPE_2__ filter_t ;


 int Flush (TYPE_2__*) ;
 int picture_pool_Release (int ) ;
 int vdp_release_x11 (int ) ;
 int vdp_video_mixer_destroy (int ,int ) ;

__attribute__((used)) static void OutputClose(vlc_object_t *obj)
{
    filter_t *filter = (filter_t *)obj;
    vlc_vdp_mixer_t *sys = filter->p_sys;

    Flush(filter);
    vdp_video_mixer_destroy(sys->vdp, sys->mixer);
    picture_pool_Release(sys->pool);
    vdp_release_x11(sys->vdp);
}
