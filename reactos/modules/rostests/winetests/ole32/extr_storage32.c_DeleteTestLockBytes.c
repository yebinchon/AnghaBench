
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * lpVtbl; } ;
struct TYPE_7__ {int ref; struct TYPE_7__* contents; TYPE_1__ ILockBytes_iface; } ;
typedef TYPE_2__ TestLockBytes ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,TYPE_2__*) ;
 int TestLockBytes_Vtbl ;
 int ok (int,char*,TYPE_2__*,...) ;

__attribute__((used)) static void DeleteTestLockBytes(TestLockBytes *This)
{
    ok(This->ILockBytes_iface.lpVtbl == &TestLockBytes_Vtbl, "test lock bytes %p deleted with incorrect vtable\n", This);
    ok(This->ref == 1, "test lock bytes %p deleted with %i references instead of 1\n", This, This->ref);
    HeapFree(GetProcessHeap(), 0, This->contents);
    HeapFree(GetProcessHeap(), 0, This);
}
