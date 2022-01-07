
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* sys; } ;
typedef TYPE_1__ aout_stream_t ;
struct TYPE_7__ {int client; int started_state; } ;
typedef TYPE_2__ aout_stream_sys_t ;


 int IAudioClient_Release (int ) ;
 int IAudioClient_Stop (int ) ;
 int ResetTimer (TYPE_1__*) ;
 scalar_t__ STARTED_STATE_OK ;
 scalar_t__ atomic_load (int *) ;
 int free (TYPE_2__*) ;

__attribute__((used)) static void Stop(aout_stream_t *s)
{
    aout_stream_sys_t *sys = s->sys;

    ResetTimer(s);

    if (atomic_load(&sys->started_state) == STARTED_STATE_OK)
        IAudioClient_Stop(sys->client);

    IAudioClient_Release(sys->client);

    free(sys);
}
