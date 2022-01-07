
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pa_threaded_mainloop ;
typedef int pa_context ;





 int pa_context_get_state (int *) ;
 int pa_threaded_mainloop_signal (int *,int ) ;

__attribute__((used)) static void context_state_cb (pa_context *ctx, void *userdata)
{
    pa_threaded_mainloop *mainloop = userdata;

    switch (pa_context_get_state(ctx))
    {
        case 129:
        case 130:
        case 128:
            pa_threaded_mainloop_signal (mainloop, 0);
        default:
            break;
    }
}
