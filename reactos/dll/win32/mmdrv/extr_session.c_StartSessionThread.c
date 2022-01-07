
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {void* ready_event; void* go_event; int handle; } ;
struct TYPE_8__ {scalar_t__ device_type; TYPE_1__ thread; } ;
typedef TYPE_2__ SessionInfo ;
typedef scalar_t__ MMRESULT ;
typedef TYPE_2__* LPTASKCALLBACK ;
typedef int DWORD_PTR ;


 int ASSERT (TYPE_2__*) ;
 int CloseHandle (void*) ;
 void* CreateEvent (int *,int ,int ,int *) ;
 int DPRINT (char*) ;
 int FALSE ;
 int INFINITE ;
 scalar_t__ MMSYSERR_NOERROR ;
 scalar_t__ MMSYSERR_NOMEM ;
 int WaitForSingleObject (void*,int ) ;
 scalar_t__ WaveOutDevice ;
 scalar_t__ WaveThread ;
 scalar_t__ mmTaskCreate (TYPE_2__*,int *,int ) ;

MMRESULT
StartSessionThread(SessionInfo* session_info)
{
    LPTASKCALLBACK task;
    MMRESULT result;

    ASSERT(session_info);



    session_info->thread.ready_event = CreateEvent(((void*)0), FALSE, FALSE, ((void*)0));

    if ( ! session_info->thread.ready_event )
    {
        DPRINT("Couldn't create thread_ready event\n");
        return MMSYSERR_NOMEM;
    }



    session_info->thread.go_event = CreateEvent(((void*)0), FALSE, FALSE, ((void*)0));

    if ( ! session_info->thread.go_event )
    {
        DPRINT("Couldn't create thread_go event\n");
        CloseHandle(session_info->thread.ready_event);
        return MMSYSERR_NOMEM;
    }


    task = ( session_info->device_type == WaveOutDevice )
           ? (LPTASKCALLBACK) WaveThread : ((void*)0);

    ASSERT(task);



    result = mmTaskCreate(task,
                          &session_info->thread.handle,
                          (DWORD_PTR)session_info);

    if ( result != MMSYSERR_NOERROR )
    {
        DPRINT("Task creation failed\n");
        CloseHandle(session_info->thread.ready_event);
        CloseHandle(session_info->thread.go_event);
        return result;
    }



    WaitForSingleObject(session_info->thread.ready_event, INFINITE);

    return MMSYSERR_NOERROR;
}
