
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * lpVtbl; } ;
struct TYPE_6__ {int ref; int maxCons; TYPE_1__ IDataAdviseHolder_iface; int * delegate; void* remote_connections; void* connections; } ;
typedef TYPE_1__ IDataAdviseHolder ;
typedef TYPE_2__ DataAdviseHolder ;


 int DataAdviseHolderImpl_VTable ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 void* HeapAlloc (int ,int ,int) ;
 int INITIAL_SINKS ;
 int TRACE (char*,TYPE_1__*) ;

__attribute__((used)) static IDataAdviseHolder *DataAdviseHolder_Constructor(void)
{
  DataAdviseHolder* newHolder;

  newHolder = HeapAlloc(GetProcessHeap(), 0, sizeof(DataAdviseHolder));

  newHolder->IDataAdviseHolder_iface.lpVtbl = &DataAdviseHolderImpl_VTable;
  newHolder->ref = 1;
  newHolder->maxCons = INITIAL_SINKS;
  newHolder->connections = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY,
                                     newHolder->maxCons * sizeof(*newHolder->connections));
  newHolder->remote_connections = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY,
                                            newHolder->maxCons * sizeof(*newHolder->remote_connections));
  newHolder->delegate = ((void*)0);

  TRACE("returning %p\n", &newHolder->IDataAdviseHolder_iface);
  return &newHolder->IDataAdviseHolder_iface;
}
