
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {size_t maxCons; int advf; struct TYPE_7__* connections; struct TYPE_7__* remote_connections; scalar_t__ delegate; int * pAdvSink; } ;
typedef TYPE_1__ DataAdviseHolder ;
typedef size_t DWORD ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,TYPE_1__*) ;
 int IDataObject_DUnadvise (scalar_t__,TYPE_1__) ;
 int TRACE (char*,TYPE_1__*) ;
 int WINE_ADVF_REMOTE ;
 int release_statdata (TYPE_1__*) ;

__attribute__((used)) static void DataAdviseHolder_Destructor(DataAdviseHolder* ptrToDestroy)
{
  DWORD index;
  TRACE("%p\n", ptrToDestroy);

  for (index = 0; index < ptrToDestroy->maxCons; index++)
  {
    if (ptrToDestroy->connections[index].pAdvSink != ((void*)0))
    {
      if (ptrToDestroy->delegate &&
          (ptrToDestroy->connections[index].advf & WINE_ADVF_REMOTE))
        IDataObject_DUnadvise(ptrToDestroy->delegate,
          ptrToDestroy->remote_connections[index]);

      release_statdata(ptrToDestroy->connections + index);
    }
  }

  HeapFree(GetProcessHeap(), 0, ptrToDestroy->remote_connections);
  HeapFree(GetProcessHeap(), 0, ptrToDestroy->connections);
  HeapFree(GetProcessHeap(), 0, ptrToDestroy);
}
