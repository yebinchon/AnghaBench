
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int reverted; } ;
typedef TYPE_1__ StorageBaseImpl ;


 int StorageBaseImpl_DeleteAll (TYPE_1__*) ;
 int TRACE (char*,TYPE_1__*) ;
 int TRUE ;

__attribute__((used)) static void TransactedSharedImpl_Invalidate(StorageBaseImpl* This)
{
  if (!This->reverted)
  {
    TRACE("Storage invalidated (stg=%p)\n", This);

    This->reverted = TRUE;

    StorageBaseImpl_DeleteAll(This);
  }
}
