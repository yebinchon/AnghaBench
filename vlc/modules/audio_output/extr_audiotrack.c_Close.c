
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_4__ {TYPE_2__* sys; } ;
typedef TYPE_1__ audio_output_t ;
struct TYPE_5__ {int thread_cond; int aout_cond; int lock; } ;
typedef TYPE_2__ aout_sys_t ;


 int free (TYPE_2__*) ;
 int vlc_cond_destroy (int *) ;
 int vlc_mutex_destroy (int *) ;

__attribute__((used)) static void
Close( vlc_object_t *obj )
{
    audio_output_t *p_aout = (audio_output_t *) obj;
    aout_sys_t *p_sys = p_aout->sys;

    vlc_mutex_destroy(&p_sys->lock);
    vlc_cond_destroy(&p_sys->aout_cond);
    vlc_cond_destroy(&p_sys->thread_cond);
    free( p_sys );
}
