
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {TYPE_3__* scratch; TYPE_1__* transactedParent; int base; } ;
typedef TYPE_4__ TransactedSharedImpl ;
struct TYPE_7__ {int IStorage_iface; } ;
struct TYPE_8__ {TYPE_2__ base; } ;
struct TYPE_6__ {int IStorage_iface; } ;
typedef int StorageBaseImpl ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,TYPE_4__*) ;
 int IStorage_Release (int *) ;
 int TransactedSharedImpl_Invalidate (int *) ;

__attribute__((used)) static void TransactedSharedImpl_Destroy( StorageBaseImpl *iface)
{
  TransactedSharedImpl* This = (TransactedSharedImpl*) iface;

  TransactedSharedImpl_Invalidate(&This->base);
  IStorage_Release(&This->transactedParent->IStorage_iface);
  IStorage_Release(&This->scratch->base.IStorage_iface);
  HeapFree(GetProcessHeap(), 0, This);
}
