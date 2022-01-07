
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pa_threaded_mainloop ;
typedef scalar_t__ pa_context_state_t ;
typedef int pa_context ;


 scalar_t__ PA_CONTEXT_FAILED ;
 scalar_t__ PA_CONTEXT_READY ;
 scalar_t__ PA_CONTEXT_TERMINATED ;
 scalar_t__ pa_context_get_state (int *) ;
 int pa_threaded_mainloop_wait (int *) ;

__attribute__((used)) static bool context_wait (pa_context *ctx, pa_threaded_mainloop *mainloop)
{
    pa_context_state_t state;

    while ((state = pa_context_get_state (ctx)) != PA_CONTEXT_READY)
    {
        if (state == PA_CONTEXT_FAILED || state == PA_CONTEXT_TERMINATED)
            return -1;
        pa_threaded_mainloop_wait (mainloop);
    }
    return 0;
}
