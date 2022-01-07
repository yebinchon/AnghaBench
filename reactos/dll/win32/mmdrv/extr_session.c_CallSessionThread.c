
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ThreadFunction ;
struct TYPE_5__ {int result; int ready_event; int go_event; int parameter; int function; } ;
struct TYPE_6__ {TYPE_1__ thread; } ;
typedef TYPE_2__ SessionInfo ;
typedef int PVOID ;
typedef int MMRESULT ;


 int ASSERT (TYPE_2__*) ;
 int DPRINT (char*) ;
 int INFINITE ;
 int SetEvent (int ) ;
 int WaitForSingleObject (int ,int ) ;

MMRESULT
CallSessionThread(
    SessionInfo* session_info,
    ThreadFunction function,
    PVOID thread_parameter)
{
    ASSERT(session_info);

    session_info->thread.function = function;
    session_info->thread.parameter = thread_parameter;

    DPRINT("Calling session thread\n");
    SetEvent(session_info->thread.go_event);

    DPRINT("Waiting for thread response\n");
    WaitForSingleObject(session_info->thread.ready_event, INFINITE);

    return session_info->thread.result;
}
