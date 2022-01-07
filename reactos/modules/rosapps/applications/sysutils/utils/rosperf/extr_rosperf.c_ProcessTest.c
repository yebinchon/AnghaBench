
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {unsigned int Repeats; } ;
struct TYPE_12__ {unsigned int (* Init ) (void**,TYPE_2__*,unsigned int) ;int Label; int (* Cleanup ) (void*,TYPE_2__*) ;int (* PassCleanup ) (void*,TYPE_2__*) ;int (* Proc ) (void*,TYPE_2__*,unsigned int) ;} ;
typedef TYPE_1__* PTEST ;
typedef TYPE_2__* PPERF_INFO ;
typedef scalar_t__ DWORD ;


 unsigned int CalibrateTest (TYPE_1__*,TYPE_2__*) ;
 int ClearWindow (TYPE_2__*) ;
 int DisplayStatus (int ,char*,int ,unsigned int) ;
 int FALSE ;
 scalar_t__ GetTickCount () ;
 int LabelWnd ;
 int ProcessMessages () ;
 int ReportTimes (scalar_t__,unsigned int,int ,int ) ;
 int TRUE ;
 unsigned int stub1 (void**,TYPE_2__*,unsigned int) ;
 int stub2 (void*,TYPE_2__*,unsigned int) ;
 int stub3 (void*,TYPE_2__*) ;
 int stub4 (void*,TYPE_2__*) ;

__attribute__((used)) static void
ProcessTest(PTEST Test, PPERF_INFO PerfInfo)
{
  unsigned Reps;
  unsigned Repeat;
  void *Context;
  DWORD StartTick;
  DWORD Time, TotalTime;

  DisplayStatus(LabelWnd, L"Calibrating", Test->Label, 0);
  Reps = CalibrateTest(Test, PerfInfo);
  if (0 == Reps)
    {
      return;
    }

  Reps = Test->Init(&Context, PerfInfo, Reps);
  if (0 == Reps)
    {
      return;
    }
  TotalTime = 0;
  for (Repeat = 0; Repeat < PerfInfo->Repeats; Repeat++)
    {
      DisplayStatus(LabelWnd, L"Testing", Test->Label, Repeat + 1);
      ClearWindow(PerfInfo);
      StartTick = GetTickCount();
      (*Test->Proc)(Context, PerfInfo, Reps);
      Time = GetTickCount() - StartTick;
      ProcessMessages();
      TotalTime += Time;
      ReportTimes(Time, Reps, Test->Label, FALSE);
      (*Test->PassCleanup)(Context, PerfInfo);
      ProcessMessages();
    }
  (*Test->Cleanup)(Context, PerfInfo);
  ReportTimes(TotalTime, Repeat * Reps, Test->Label, TRUE);
  ProcessMessages();
}
