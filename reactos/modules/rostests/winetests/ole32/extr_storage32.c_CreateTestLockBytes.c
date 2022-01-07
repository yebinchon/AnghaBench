
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * lpVtbl; } ;
struct TYPE_6__ {int ref; TYPE_1__ ILockBytes_iface; } ;
typedef TYPE_2__ TestLockBytes ;


 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 TYPE_2__* HeapAlloc (int ,int ,int) ;
 int TestLockBytes_Vtbl ;

__attribute__((used)) static void CreateTestLockBytes(TestLockBytes **This)
{
    *This = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, sizeof(**This));

    if (*This)
    {
        (*This)->ILockBytes_iface.lpVtbl = &TestLockBytes_Vtbl;
        (*This)->ref = 1;
    }
}
