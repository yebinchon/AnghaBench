#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {unsigned int Repeats; } ;
struct TYPE_12__ {unsigned int (* Init ) (void**,TYPE_2__*,unsigned int) ;int /*<<< orphan*/  Label; int /*<<< orphan*/  (* Cleanup ) (void*,TYPE_2__*) ;int /*<<< orphan*/  (* PassCleanup ) (void*,TYPE_2__*) ;int /*<<< orphan*/  (* Proc ) (void*,TYPE_2__*,unsigned int) ;} ;
typedef  TYPE_1__* PTEST ;
typedef  TYPE_2__* PPERF_INFO ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 unsigned int FUNC0 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  LabelWnd ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 unsigned int FUNC6 (void**,TYPE_2__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (void*,TYPE_2__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (void*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (void*,TYPE_2__*) ; 

__attribute__((used)) static void
FUNC10(PTEST Test, PPERF_INFO PerfInfo)
{
  unsigned Reps;
  unsigned Repeat;
  void *Context;
  DWORD StartTick;
  DWORD Time, TotalTime;

  FUNC2(LabelWnd, L"Calibrating", Test->Label, 0);
  Reps = FUNC0(Test, PerfInfo);
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
      FUNC2(LabelWnd, L"Testing", Test->Label, Repeat + 1);
      FUNC1(PerfInfo);
      StartTick = FUNC3();
      (*Test->Proc)(Context, PerfInfo, Reps);
      Time = FUNC3() - StartTick;
      FUNC4();
      TotalTime += Time;
      FUNC5(Time, Reps, Test->Label, FALSE);
      (*Test->PassCleanup)(Context, PerfInfo);
      FUNC4();
    }
  (*Test->Cleanup)(Context, PerfInfo);
  FUNC5(TotalTime, Repeat * Reps, Test->Label, TRUE);
  FUNC4();
}