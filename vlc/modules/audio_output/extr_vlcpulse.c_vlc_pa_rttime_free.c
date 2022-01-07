
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int pa_time_event ;
typedef int pa_threaded_mainloop ;
struct TYPE_3__ {int (* time_free ) (int *) ;} ;
typedef TYPE_1__ pa_mainloop_api ;


 TYPE_1__* pa_threaded_mainloop_get_api (int *) ;
 int stub1 (int *) ;

void vlc_pa_rttime_free (pa_threaded_mainloop *mainloop, pa_time_event *e)
{
    pa_mainloop_api *api = pa_threaded_mainloop_get_api (mainloop);

    api->time_free (e);
}
