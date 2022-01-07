
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pa_threaded_mainloop ;
typedef int pa_stream ;





 int pa_stream_get_state (int *) ;
 int pa_threaded_mainloop_signal (int *,int ) ;

__attribute__((used)) static void stream_state_cb(pa_stream *s, void *userdata)
{
    pa_threaded_mainloop *mainloop = userdata;

    switch (pa_stream_get_state(s)) {
        case 129:
        case 130:
        case 128:
            pa_threaded_mainloop_signal(mainloop, 0);
        default:
            break;
    }
}
