
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_5__ {int inhibit; TYPE_2__* p_sys; } ;
typedef TYPE_1__ vlc_inhibit_t ;
struct TYPE_6__ {int mutex; int cond; int thread; scalar_t__ mask; } ;
typedef TYPE_2__ vlc_inhibit_sys_t ;


 int Inhibit ;
 int Run ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int VLC_THREAD_PRIORITY_LOW ;
 scalar_t__ unlikely (int ) ;
 scalar_t__ vlc_clone (int *,int ,TYPE_1__*,int ) ;
 int vlc_cond_destroy (int *) ;
 int vlc_cond_init (int *) ;
 int vlc_mutex_destroy (int *) ;
 int vlc_mutex_init (int *) ;
 TYPE_2__* vlc_obj_malloc (int *,int) ;

__attribute__((used)) static int OpenInhibit (vlc_object_t *obj)
{
    vlc_inhibit_t *ih = (vlc_inhibit_t *)obj;
    vlc_inhibit_sys_t *sys = ih->p_sys =
            vlc_obj_malloc(obj, sizeof(vlc_inhibit_sys_t));
    if (unlikely(ih->p_sys == ((void*)0)))
        return VLC_ENOMEM;

    vlc_mutex_init(&sys->mutex);
    vlc_cond_init(&sys->cond);
    sys->mask = 0;


    if (vlc_clone(&sys->thread, Run, ih, VLC_THREAD_PRIORITY_LOW))
    {
        vlc_cond_destroy(&sys->cond);
        vlc_mutex_destroy(&sys->mutex);
        return VLC_EGENERIC;
    }

    ih->inhibit = Inhibit;
    return VLC_SUCCESS;
}
