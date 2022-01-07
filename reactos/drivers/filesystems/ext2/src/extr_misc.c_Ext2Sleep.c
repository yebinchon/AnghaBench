
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VOID ;
typedef scalar_t__ ULONG ;
struct TYPE_3__ {int QuadPart; } ;
typedef int LONGLONG ;
typedef TYPE_1__ LARGE_INTEGER ;


 int KeDelayExecutionThread (int ,int ,TYPE_1__*) ;
 int KernelMode ;
 int TRUE ;

VOID
Ext2Sleep(ULONG ms)
{
    LARGE_INTEGER Timeout;
    Timeout.QuadPart = (LONGLONG)ms*1000*(-10);
    KeDelayExecutionThread(KernelMode, TRUE, &Timeout);
}
