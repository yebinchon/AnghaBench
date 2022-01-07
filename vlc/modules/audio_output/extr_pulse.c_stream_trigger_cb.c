
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct timeval {int dummy; } ;
typedef int pa_time_event ;
typedef int pa_mainloop_api ;
struct TYPE_5__ {TYPE_2__* sys; } ;
typedef TYPE_1__ audio_output_t ;
struct TYPE_6__ {int stream; int * trigger; int mainloop; } ;
typedef TYPE_2__ aout_sys_t ;


 int assert (int) ;
 int msg_Dbg (TYPE_1__*,char*) ;
 int stream_start_now (int ,TYPE_1__*) ;
 int vlc_pa_rttime_free (int ,int *) ;

__attribute__((used)) static void stream_trigger_cb(pa_mainloop_api *api, pa_time_event *e,
                              const struct timeval *tv, void *userdata)
{
    audio_output_t *aout = userdata;
    aout_sys_t *sys = aout->sys;

    assert (sys->trigger == e);

    msg_Dbg(aout, "starting deferred");
    vlc_pa_rttime_free(sys->mainloop, sys->trigger);
    sys->trigger = ((void*)0);
    stream_start_now(sys->stream, aout);
    (void) api; (void) e; (void) tv;
}
