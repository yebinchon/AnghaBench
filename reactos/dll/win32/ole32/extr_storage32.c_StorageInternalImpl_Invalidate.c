
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ reverted; } ;
struct TYPE_4__ {int ParentListEntry; TYPE_3__ base; int * parentStorage; } ;
typedef TYPE_1__ StorageInternalImpl ;
typedef int StorageBaseImpl ;


 int StorageBaseImpl_DeleteAll (TYPE_3__*) ;
 int TRACE (char*,TYPE_1__*) ;
 scalar_t__ TRUE ;
 int list_remove (int *) ;

__attribute__((used)) static void StorageInternalImpl_Invalidate( StorageBaseImpl *base )
{
  StorageInternalImpl* This = (StorageInternalImpl*) base;

  if (!This->base.reverted)
  {
    TRACE("Storage invalidated (stg=%p)\n", This);

    This->base.reverted = TRUE;

    This->parentStorage = ((void*)0);

    StorageBaseImpl_DeleteAll(&This->base);

    list_remove(&This->ParentListEntry);
  }
}
