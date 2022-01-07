
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ Seconds; } ;
struct TYPE_10__ {unsigned int (* Init ) (void**,TYPE_2__*,unsigned int) ;int (* Cleanup ) (void*,TYPE_2__*) ;int (* PassCleanup ) (void*,TYPE_2__*) ;int (* Proc ) (void*,TYPE_2__*,unsigned int) ;} ;
typedef TYPE_1__* PTEST ;
typedef TYPE_2__* PPERF_INFO ;
typedef scalar_t__ DWORD ;


 int ClearWindow (TYPE_2__*) ;
 scalar_t__ ENOUGH ;
 double GOAL ;
 scalar_t__ GetTickCount () ;
 int ProcessMessages () ;
 scalar_t__ TICK ;
 unsigned int stub1 (void**,TYPE_2__*,unsigned int) ;
 int stub2 (void*,TYPE_2__*,unsigned int) ;
 int stub3 (void*,TYPE_2__*) ;
 int stub4 (void*,TYPE_2__*) ;

__attribute__((used)) static unsigned
CalibrateTest(PTEST Test, PPERF_INFO PerfInfo)
{




  unsigned Reps, DidReps;
  unsigned Exponent;
  void *Context;
  DWORD StartTick;
  DWORD Duration;
  Reps = 1;
  for (;;)
    {
      ClearWindow(PerfInfo);
      DidReps = (*Test->Init)(&Context, PerfInfo, Reps);
      ProcessMessages();
      if (0 == DidReps)
        {
          return 0;
        }
      StartTick = GetTickCount();
      (*Test->Proc)(Context, PerfInfo, Reps);
      Duration = GetTickCount() - StartTick;
      (*Test->PassCleanup) (Context, PerfInfo);
      (*Test->Cleanup)(Context, PerfInfo);
      ProcessMessages();

      if (DidReps != Reps)
        {


          return DidReps;
        }

      if (2000 <= Duration)
        {
          break;
        }


      if (Duration <= 10)
        {
          Reps *= 10;
        }
      else
        {

          Reps = (int)(2500 * (double) Reps / (double) Duration) + 1;
        }
    }

  Reps = (int) ((double) PerfInfo->Seconds * 1000.0 * (double) Reps / (double) Duration) + 1;



  Reps--;
  Exponent = 1;
  while (9 < Reps)
    {
      Reps /= 10;
      Exponent *= 10;
    }
  Reps = (Reps + 1) * Exponent;

  return Reps;
}
