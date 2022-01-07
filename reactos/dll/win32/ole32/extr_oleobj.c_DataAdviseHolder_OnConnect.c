
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {size_t maxCons; int * delegate; TYPE_1__* connections; int * remote_connections; } ;
struct TYPE_4__ {int advf; int * pAdvSink; int formatetc; } ;
typedef int IDataObject ;
typedef int IDataAdviseHolder ;
typedef int HRESULT ;
typedef TYPE_2__ DataAdviseHolder ;
typedef size_t DWORD ;


 scalar_t__ FAILED (int ) ;
 int IDataObject_DAdvise (int *,int *,int ,int *,int *) ;
 int S_OK ;
 int WINE_ADVF_REMOTE ;
 TYPE_2__* impl_from_IDataAdviseHolder (int *) ;

HRESULT DataAdviseHolder_OnConnect(IDataAdviseHolder *iface, IDataObject *pDelegate)
{
  DataAdviseHolder *This = impl_from_IDataAdviseHolder(iface);
  DWORD index;
  HRESULT hr = S_OK;

  for(index = 0; index < This->maxCons; index++)
  {
    if(This->connections[index].pAdvSink != ((void*)0))
    {
      hr = IDataObject_DAdvise(pDelegate, &This->connections[index].formatetc,
                               This->connections[index].advf,
                               This->connections[index].pAdvSink,
                               &This->remote_connections[index]);
      if (FAILED(hr)) break;
      This->connections[index].advf |= WINE_ADVF_REMOTE;
    }
  }
  This->delegate = pDelegate;
  return hr;
}
