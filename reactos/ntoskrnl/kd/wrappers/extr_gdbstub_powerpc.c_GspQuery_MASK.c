#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_9__ ;
typedef  struct TYPE_26__   TYPE_8__ ;
typedef  struct TYPE_25__   TYPE_7__ ;
typedef  struct TYPE_24__   TYPE_6__ ;
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;
typedef  struct TYPE_18__   TYPE_15__ ;
typedef  struct TYPE_17__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VOID ;
typedef  int /*<<< orphan*/  ULONG ;
struct TYPE_25__ {struct TYPE_25__* Flink; } ;
struct TYPE_22__ {TYPE_7__* Flink; } ;
struct TYPE_27__ {char* ImageFileName; scalar_t__ UniqueProcessId; TYPE_7__ ThreadListHead; TYPE_4__ ActiveProcessLinks; } ;
struct TYPE_24__ {size_t State; } ;
struct TYPE_23__ {scalar_t__ UniqueThread; } ;
struct TYPE_21__ {TYPE_7__* Flink; } ;
struct TYPE_26__ {TYPE_6__ Tcb; TYPE_5__ Cid; TYPE_9__* ThreadsProcess; TYPE_3__ ThreadListEntry; } ;
struct TYPE_20__ {scalar_t__ UniqueThread; } ;
struct TYPE_19__ {scalar_t__ UniqueThread; } ;
struct TYPE_18__ {TYPE_1__ Cid; } ;
struct TYPE_17__ {TYPE_2__ Cid; } ;
typedef  TYPE_7__* PLIST_ENTRY ;
typedef  TYPE_8__* PETHREAD ;
typedef  TYPE_9__* PEPROCESS ;
typedef  char* PCHAR ;

/* Variables and functions */
 int /*<<< orphan*/  ActiveProcessLinks ; 
 void* FUNC0 (TYPE_7__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EPROCESS ; 
 int /*<<< orphan*/  ETHREAD ; 
 int /*<<< orphan*/  FALSE ; 
 TYPE_15__* GspDbgThread ; 
 TYPE_8__* GspEnumThread ; 
 scalar_t__ FUNC1 (char*,TYPE_8__**) ; 
 int /*<<< orphan*/  FUNC2 (char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int,int /*<<< orphan*/ ) ; 
 char* GspOutBuffer ; 
 int /*<<< orphan*/ * GspThreadStates ; 
 int /*<<< orphan*/  FUNC4 (TYPE_8__*) ; 
 TYPE_7__ PsActiveProcessHead ; 
 TYPE_10__* FUNC5 () ; 
 int /*<<< orphan*/  ThreadListEntry ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int FUNC8 (char*) ; 
 scalar_t__ FUNC9 (char*,char*,int) ; 

VOID
FUNC10(PCHAR Request)
{
  ULONG Value;

  if (FUNC9(Request, "C", 1) == 0)
    {
      PCHAR ptr = &GspOutBuffer[2];

      /* Get current thread id */
      GspOutBuffer[0] = 'Q';
      GspOutBuffer[1] = 'C';
      if (NULL != GspDbgThread)
        {
          Value = (ULONG) GspDbgThread->Cid.UniqueThread;
        }
      else
        {
          Value = (ULONG) FUNC5()->Cid.UniqueThread;
        }
      FUNC2(&ptr, Value);
    }
  else if (FUNC9(Request, "fThreadInfo", 11) == 0)
    {
      PEPROCESS Process;
      PLIST_ENTRY AThread, AProcess;
      PCHAR ptr = &GspOutBuffer[1];

      /* Get first thread id */
      GspEnumThread = NULL;
      AProcess = PsActiveProcessHead.Flink;
      while(AProcess != &PsActiveProcessHead)
        {
          Process = FUNC0(AProcess, EPROCESS, ActiveProcessLinks);
          AThread = Process->ThreadListHead.Flink;
          if (AThread != &Process->ThreadListHead)
            {
              GspEnumThread = FUNC0(Process->ThreadListHead.Flink,
                                                ETHREAD, ThreadListEntry);
              break;
            }
          AProcess = AProcess->Flink;
        }
      if(GspEnumThread != NULL)
        {
          GspOutBuffer[0] = 'm';
          Value = (ULONG) GspEnumThread->Cid.UniqueThread;
          FUNC2(&ptr, Value);
        }
      else
        {
          /* FIXME - what to do here? This case should never happen though, there
                     should always be at least one thread on the system... */
          /* GspOutBuffer[0] = 'l'; */
        }
    }
  else if (FUNC9(Request, "sThreadInfo", 11) == 0)
    {
      PEPROCESS Process;
      PLIST_ENTRY AThread, AProcess;
      PCHAR ptr = &GspOutBuffer[1];

      /* Get next thread id */
      if (GspEnumThread != NULL)
        {
          /* find the next thread */
          Process = GspEnumThread->ThreadsProcess;
          if(GspEnumThread->ThreadListEntry.Flink != &Process->ThreadListHead)
            {
              GspEnumThread = FUNC0(GspEnumThread->ThreadListEntry.Flink,
                                                 ETHREAD, ThreadListEntry);
            }
          else
            {
              PETHREAD Thread = NULL;
              AProcess = Process->ActiveProcessLinks.Flink;
              while(AProcess != &PsActiveProcessHead)
                {
                  Process = FUNC0(AProcess, EPROCESS, ActiveProcessLinks);
                  AThread = Process->ThreadListHead.Flink;
                  if (AThread != &Process->ThreadListHead)
                    {
                      Thread = FUNC0(Process->ThreadListHead.Flink,
                                                 ETHREAD, ThreadListEntry);
                      break;
                    }
                  AProcess = AProcess->Flink;
                }
              GspEnumThread = Thread;
            }

          if (GspEnumThread != NULL)
            {
              /* return the ID */
              GspOutBuffer[0] = 'm';
              Value = (ULONG) GspEnumThread->Cid.UniqueThread;
              FUNC2(&ptr, Value);
            }
          else
            {
              GspOutBuffer[0] = 'l';
            }
        }
      else
        {
          GspOutBuffer[0] = 'l';
        }
    }
  else if (FUNC9(Request, "ThreadExtraInfo", 15) == 0)
    {
      PETHREAD ThreadInfo;

      /* Get thread information */
      if (FUNC1(Request + 16, &ThreadInfo))
        {
          char Buffer[64];
          PEPROCESS Proc;

          Proc = (PEPROCESS) ThreadInfo->ThreadsProcess;

          Buffer[0] = '\0';
          if (NULL != Proc )
            {
              FUNC6(Buffer, "%s [%d:0x%x], ", Proc->ImageFileName,
                      (int) Proc->UniqueProcessId,
                      (int) ThreadInfo->Cid.UniqueThread);
            }
          FUNC7(Buffer + FUNC8(Buffer),
                 GspThreadStates[ThreadInfo->Tcb.State]);

          FUNC4(ThreadInfo);

          FUNC3(Buffer, &GspOutBuffer[0], FUNC8(Buffer), FALSE);
        }
    }
}