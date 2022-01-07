
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ function; int ready_event; int result; int go_event; } ;
struct TYPE_7__ {TYPE_1__ thread; } ;
typedef TYPE_2__ SessionInfo ;
typedef int MMRESULT ;
typedef scalar_t__ LPVOID ;
typedef int DWORD ;
typedef int BOOL ;


 int DPRINT (char*) ;
 scalar_t__ DRVM_TERMINATE ;
 int FALSE ;
 int GetCurrentThread () ;
 int INFINITE ;
 int MMSYSERR_ERROR ;
 int PerformWaveIO (TYPE_2__*) ;
 int ProcessSessionThreadRequest (TYPE_2__*) ;
 int ReturnCompletedBuffers (TYPE_2__*) ;
 int SetEvent (int ) ;
 int SetThreadPriority (int ,int ) ;
 int THREAD_PRIORITY_TIME_CRITICAL ;
 int TRUE ;
 scalar_t__ WAIT_IO_COMPLETION ;
 scalar_t__ WaitForSingleObjectEx (int ,int ,int ) ;

DWORD
WaveThread(LPVOID parameter)
{
    MMRESULT result = MMSYSERR_ERROR;
    SessionInfo* session_info = (SessionInfo*) parameter;
    BOOL terminate = FALSE;


    SetThreadPriority(GetCurrentThread(), THREAD_PRIORITY_TIME_CRITICAL);

    DPRINT("Wave processing thread setting ready state\n");

    SetEvent(session_info->thread.ready_event);

    while ( ! terminate )
    {

        while ( WaitForSingleObjectEx(session_info->thread.go_event,
                                      INFINITE,
                                      TRUE) == WAIT_IO_COMPLETION )
        {

            ReturnCompletedBuffers(session_info);
        }

        DPRINT("Wave processing thread woken up\n");


        terminate = (session_info->thread.function == DRVM_TERMINATE);


        DPRINT("Processing thread request\n");
        result = ProcessSessionThreadRequest(session_info);


        session_info->thread.result = result;


        DPRINT("Performing wave I/O\n");
        PerformWaveIO(session_info);


        DPRINT("Wave processing thread sleeping\n");
        SetEvent(session_info->thread.ready_event);
    }

    return 0;
}
