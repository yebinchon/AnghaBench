
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int ULONG_PTR ;
struct TYPE_7__ {int ExceptionCode; } ;
struct TYPE_8__ {TYPE_1__ ExceptionRecord; } ;
struct TYPE_9__ {TYPE_2__ Exception; } ;
struct TYPE_10__ {int NewState; TYPE_3__ u; int Thread; } ;
typedef int PETHREAD ;
typedef TYPE_4__ DBGKD_ANY_WAIT_STATE_CHANGE ;


 TYPE_4__ CurrentStateChange ;


 int GetContextManipulateHandler ;
 int InException ;
 int KDDBGPRINT (char*,int,...) ;
 int KdpManipulateStateHandler ;
 int PsGetThreadId (int ) ;
 int PsGetThreadProcessId (int ) ;
 int TRUE ;
 int gdb_dbg_pid ;
 int gdb_dbg_tid ;
 int gdb_send_exception () ;
 int handle_to_gdb_pid (int ) ;
 int handle_to_gdb_tid (int ) ;

__attribute__((used)) static
void
send_kd_state_change(DBGKD_ANY_WAIT_STATE_CHANGE* StateChange)
{
    InException = TRUE;

    switch (StateChange->NewState)
    {
    case 128:
    case 129:
    {
        PETHREAD Thread = (PETHREAD)(ULONG_PTR)StateChange->Thread;

        CurrentStateChange = *StateChange;
        KDDBGPRINT("Exception 0x%08x in thread p%p.%p.\n",
            StateChange->u.Exception.ExceptionRecord.ExceptionCode,
            PsGetThreadProcessId(Thread),
            PsGetThreadId(Thread));

        gdb_dbg_tid = handle_to_gdb_tid(PsGetThreadId(Thread));



        gdb_dbg_pid = handle_to_gdb_pid(PsGetThreadProcessId(Thread));

        gdb_send_exception();

        KdpManipulateStateHandler = GetContextManipulateHandler;
        break;
    }
    default:
        KDDBGPRINT("Unknown StateChange %u.\n", StateChange->NewState);
        while (1);
    }
}
