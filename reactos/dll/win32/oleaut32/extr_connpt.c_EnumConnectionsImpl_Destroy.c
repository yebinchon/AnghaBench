
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t nConns; struct TYPE_4__* pCD; int pUnk; } ;
typedef TYPE_1__ EnumConnectionsImpl ;
typedef size_t DWORD ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,TYPE_1__*) ;
 int IUnknown_Release (int ) ;

__attribute__((used)) static void EnumConnectionsImpl_Destroy(EnumConnectionsImpl *Obj)
{
  DWORD i;

  for(i = 0; i < Obj->nConns; i++)
    IUnknown_Release(Obj->pCD[i].pUnk);

  HeapFree(GetProcessHeap(), 0, Obj->pCD);
  HeapFree(GetProcessHeap(), 0, Obj);
  return;
}
