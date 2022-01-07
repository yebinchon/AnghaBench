
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Wnd; } ;
typedef TYPE_1__* PPERF_INFO ;


 int InvalidateRect (int ,int *,int ) ;
 int TRUE ;
 int UpdateWindow (int ) ;

__attribute__((used)) static void
ClearWindow(PPERF_INFO PerfInfo)
{
  InvalidateRect(PerfInfo->Wnd, ((void*)0), TRUE);
  UpdateWindow(PerfInfo->Wnd);
}
