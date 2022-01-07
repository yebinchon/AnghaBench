
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pa_threaded_mainloop ;
typedef scalar_t__ pa_stream_state_t ;
typedef int pa_stream ;


 scalar_t__ PA_STREAM_FAILED ;
 scalar_t__ PA_STREAM_READY ;
 scalar_t__ PA_STREAM_TERMINATED ;
 scalar_t__ pa_stream_get_state (int *) ;
 int pa_threaded_mainloop_wait (int *) ;

__attribute__((used)) static int stream_wait(pa_stream *stream, pa_threaded_mainloop *mainloop)
{
    pa_stream_state_t state;

    while ((state = pa_stream_get_state(stream)) != PA_STREAM_READY) {
        if (state == PA_STREAM_FAILED || state == PA_STREAM_TERMINATED)
            return -1;
        pa_threaded_mainloop_wait(mainloop);
    }
    return 0;
}
