
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vlc_object_t ;
struct sink {struct sink* sink_force; struct sink* next; struct sink* sinks; int mainloop; int * context; } ;
typedef int pa_context ;
struct TYPE_2__ {struct sink* sys; } ;
typedef TYPE_1__ audio_output_t ;
typedef struct sink aout_sys_t ;


 int free (struct sink*) ;
 int pa_context_set_subscribe_callback (int *,int *,int *) ;
 int pa_threaded_mainloop_lock (int ) ;
 int pa_threaded_mainloop_unlock (int ) ;
 int vlc_pa_disconnect (int *,int *,int ) ;

__attribute__((used)) static void Close(vlc_object_t *obj)
{
    audio_output_t *aout = (audio_output_t *)obj;
    aout_sys_t *sys = aout->sys;
    pa_context *ctx = sys->context;

    pa_threaded_mainloop_lock(sys->mainloop);
    pa_context_set_subscribe_callback(sys->context, ((void*)0), ((void*)0));
    pa_threaded_mainloop_unlock(sys->mainloop);
    vlc_pa_disconnect(obj, ctx, sys->mainloop);

    for (struct sink *sink = sys->sinks, *next; sink != ((void*)0); sink = next)
    {
        next = sink->next;
        free(sink);
    }
    free(sys->sink_force);
    free(sys);
}
