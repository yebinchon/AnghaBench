
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pa_threaded_mainloop ;
typedef int pa_stream ;


 int pa_threaded_mainloop_signal (int *,int ) ;

__attribute__((used)) static void stream_success_cb (pa_stream *s, int success, void *userdata)
{
    pa_threaded_mainloop *mainloop = userdata;

    pa_threaded_mainloop_signal(mainloop, 0);
    (void) s;
    (void) success;
}
