
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VOID ;
typedef int ULONG ;
struct TYPE_3__ {int QuadPart; } ;
typedef TYPE_1__ LARGE_INTEGER ;


 int FALSE ;
 int KeDelayExecutionThread (int ,int ,TYPE_1__*) ;
 int KernelMode ;

VOID
SleepMs(ULONG Milliseconds)
{
    LARGE_INTEGER Period;

    Period.QuadPart = Milliseconds;
    Period.QuadPart *= -10000;

    KeDelayExecutionThread(KernelMode, FALSE, &Period);
}
