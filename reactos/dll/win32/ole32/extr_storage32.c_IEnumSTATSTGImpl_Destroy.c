
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* parentStorage; } ;
struct TYPE_5__ {int IStorage_iface; } ;
typedef TYPE_2__ IEnumSTATSTGImpl ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,TYPE_2__*) ;
 int IStorage_Release (int *) ;

__attribute__((used)) static void IEnumSTATSTGImpl_Destroy(IEnumSTATSTGImpl* This)
{
  IStorage_Release(&This->parentStorage->IStorage_iface);
  HeapFree(GetProcessHeap(), 0, This);
}
