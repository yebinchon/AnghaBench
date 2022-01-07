
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int base; } ;
typedef TYPE_1__ StorageInternalImpl ;
typedef int StorageBaseImpl ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,TYPE_1__*) ;
 int StorageInternalImpl_Invalidate (int *) ;

__attribute__((used)) static void StorageInternalImpl_Destroy( StorageBaseImpl *iface)
{
  StorageInternalImpl* This = (StorageInternalImpl*) iface;

  StorageInternalImpl_Invalidate(&This->base);

  HeapFree(GetProcessHeap(), 0, This);
}
