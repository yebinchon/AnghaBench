
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* sys; } ;
typedef TYPE_1__ audio_output_t ;
struct TYPE_5__ {int lock; int opaque; int (* flush ) (int ) ;} ;
typedef TYPE_2__ aout_sys_t ;


 int stub1 (int ) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static void Flush (audio_output_t *aout)
{
    aout_sys_t *sys = aout->sys;

    if (sys->flush != ((void*)0))
    {
        vlc_mutex_lock(&sys->lock);
        sys->flush (sys->opaque);
        vlc_mutex_unlock(&sys->lock);
    }
}
