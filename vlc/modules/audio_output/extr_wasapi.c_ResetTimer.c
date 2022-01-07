
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* sys; } ;
typedef TYPE_1__ aout_stream_t ;
struct TYPE_5__ {int * hTimer; } ;
typedef TYPE_2__ aout_stream_sys_t ;


 int DeleteTimerQueueTimer (int *,int *,int ) ;
 int INVALID_HANDLE_VALUE ;

__attribute__((used)) static void ResetTimer(aout_stream_t *s)
{
    aout_stream_sys_t *sys = s->sys;
    if (sys->hTimer != ((void*)0))
    {
        DeleteTimerQueueTimer(((void*)0), sys->hTimer, INVALID_HANDLE_VALUE);
        sys->hTimer = ((void*)0);
    }
}
