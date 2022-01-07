
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int pa_stream ;
typedef int pa_operation ;
struct TYPE_4__ {TYPE_2__* sys; } ;
typedef TYPE_1__ audio_output_t ;
struct TYPE_5__ {int * trigger; int mainloop; } ;
typedef TYPE_2__ aout_sys_t ;


 int pa_operation_unref (int *) ;
 int * pa_stream_cork (int *,int,int *,int *) ;
 int vlc_pa_rttime_free (int ,int *) ;

__attribute__((used)) static void stream_stop(pa_stream *s, audio_output_t *aout)
{
    aout_sys_t *sys = aout->sys;
    pa_operation *op;

    if (sys->trigger != ((void*)0)) {
        vlc_pa_rttime_free(sys->mainloop, sys->trigger);
        sys->trigger = ((void*)0);
    }

    op = pa_stream_cork(s, 1, ((void*)0), ((void*)0));
    if (op != ((void*)0))
        pa_operation_unref(op);
}
