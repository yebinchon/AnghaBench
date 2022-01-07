
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ pid_t ;
struct TYPE_5__ {scalar_t__ helper_pid; int pipe_in; int pipe_out; struct TYPE_5__* session_key; struct TYPE_5__* com_buf; } ;
typedef TYPE_1__* PNegoHelper ;


 scalar_t__ EINTR ;
 int GetProcessHeap () ;
 int HeapFree (int ,int ,TYPE_1__*) ;
 int TRACE (char*,TYPE_1__*) ;
 int close (int ) ;
 scalar_t__ errno ;
 scalar_t__ waitpid (scalar_t__,int *,int ) ;

void cleanup_helper(PNegoHelper helper)
{

    TRACE("Killing helper %p\n", helper);
    if(helper == ((void*)0))
        return;

    HeapFree(GetProcessHeap(), 0, helper->com_buf);
    HeapFree(GetProcessHeap(), 0, helper->session_key);


    close(helper->pipe_out);
    close(helper->pipe_in);
    HeapFree(GetProcessHeap(), 0, helper);
}
