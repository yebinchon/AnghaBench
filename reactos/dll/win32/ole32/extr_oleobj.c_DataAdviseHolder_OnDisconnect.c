
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {size_t maxCons; int * delegate; TYPE_1__* connections; scalar_t__* remote_connections; } ;
struct TYPE_4__ {int advf; int * pAdvSink; } ;
typedef int IDataAdviseHolder ;
typedef TYPE_2__ DataAdviseHolder ;
typedef size_t DWORD ;


 int IDataObject_DUnadvise (int *,scalar_t__) ;
 int WINE_ADVF_REMOTE ;
 TYPE_2__* impl_from_IDataAdviseHolder (int *) ;

void DataAdviseHolder_OnDisconnect(IDataAdviseHolder *iface)
{
  DataAdviseHolder *This = impl_from_IDataAdviseHolder(iface);
  DWORD index;

  for(index = 0; index < This->maxCons; index++)
  {
    if((This->connections[index].pAdvSink != ((void*)0)) &&
       (This->connections[index].advf & WINE_ADVF_REMOTE))
    {
      IDataObject_DUnadvise(This->delegate, This->remote_connections[index]);
      This->remote_connections[index] = 0;
      This->connections[index].advf &= ~WINE_ADVF_REMOTE;
    }
  }
  This->delegate = ((void*)0);
}
