
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int ref; int * pCFObject; int * storage; int * dataAdviseHolder; int * oleAdviseHolder; int * clientSite; int * dataCache; int * dataCache_PersistStg; int outerUnknown; struct TYPE_6__* containerObj; struct TYPE_6__* containerApp; } ;
typedef TYPE_1__ DefaultHandler ;


 int DefaultHandler_Stop (TYPE_1__*) ;
 int GetProcessHeap () ;
 int HeapFree (int ,int ,TYPE_1__*) ;
 int IClassFactory_Release (int *) ;
 int IDataAdviseHolder_Release (int *) ;
 int IOleAdviseHolder_Release (int *) ;
 int IOleClientSite_Release (int *) ;
 int IPersistStorage_Release (int *) ;
 int IStorage_Release (int *) ;
 int IUnknown_AddRef (int ) ;
 int IUnknown_Release (int *) ;
 int TRACE (char*,TYPE_1__*) ;

__attribute__((used)) static void DefaultHandler_Destroy(
  DefaultHandler* This)
{
  TRACE("(%p)\n", This);




  This->ref = 10000;


  DefaultHandler_Stop(This);

  HeapFree( GetProcessHeap(), 0, This->containerApp );
  This->containerApp = ((void*)0);
  HeapFree( GetProcessHeap(), 0, This->containerObj );
  This->containerObj = ((void*)0);

  if (This->dataCache)
  {


    IUnknown_AddRef(This->outerUnknown);
    IPersistStorage_Release(This->dataCache_PersistStg);
    IUnknown_Release(This->dataCache);
    This->dataCache_PersistStg = ((void*)0);
    This->dataCache = ((void*)0);
  }

  if (This->clientSite)
  {
    IOleClientSite_Release(This->clientSite);
    This->clientSite = ((void*)0);
  }

  if (This->oleAdviseHolder)
  {
    IOleAdviseHolder_Release(This->oleAdviseHolder);
    This->oleAdviseHolder = ((void*)0);
  }

  if (This->dataAdviseHolder)
  {
    IDataAdviseHolder_Release(This->dataAdviseHolder);
    This->dataAdviseHolder = ((void*)0);
  }

  if (This->storage)
  {
    IStorage_Release(This->storage);
    This->storage = ((void*)0);
  }

  if (This->pCFObject)
  {
    IClassFactory_Release(This->pCFObject);
    This->pCFObject = ((void*)0);
  }

  HeapFree(GetProcessHeap(), 0, This);
}
