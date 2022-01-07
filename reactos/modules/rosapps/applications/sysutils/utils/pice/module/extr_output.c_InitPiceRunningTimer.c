
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {long QuadPart; } ;
typedef TYPE_1__ LARGE_INTEGER ;


 int ENTER_FUNC () ;
 int KeInitializeDpc (int *,int ,int *) ;
 int KeInitializeTimer (int *) ;
 int KeSetTimerEx (int *,TYPE_1__,long,int *) ;
 int LEAVE_FUNC () ;
 int PiceRunningTimer ;
 int PiceTimer ;
 int PiceTimerDPC ;
 int PiceTimerDpc ;

void InitPiceRunningTimer(void)
{
 LARGE_INTEGER Interval;

 ENTER_FUNC();
    LEAVE_FUNC();
}
