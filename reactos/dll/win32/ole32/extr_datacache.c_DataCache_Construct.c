
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_8__ ;
typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_19__ {int * lpVtbl; } ;
struct TYPE_18__ {int * lpVtbl; } ;
struct TYPE_17__ {int * lpVtbl; } ;
struct TYPE_16__ {int * lpVtbl; } ;
struct TYPE_15__ {int * lpVtbl; } ;
struct TYPE_14__ {int * lpVtbl; } ;
struct TYPE_13__ {int * lpVtbl; } ;
struct TYPE_20__ {int ref; int last_cache_id; int clsid; int * running_object; void* dirty; int cache_list; int * presentationStorage; void* clsid_static; scalar_t__ sinkInterface; scalar_t__ sinkAdviseFlag; scalar_t__ sinkAspects; TYPE_7__ IUnknown_inner; TYPE_7__* outer_unk; TYPE_6__ IAdviseSink_iface; TYPE_5__ IOleCacheControl_iface; TYPE_4__ IOleCache2_iface; TYPE_3__ IViewObject2_iface; TYPE_2__ IPersistStorage_iface; TYPE_1__ IDataObject_iface; } ;
typedef int * REFCLSID ;
typedef TYPE_7__* LPUNKNOWN ;
typedef TYPE_8__ DataCache ;


 int CLSID_NULL ;
 int DataCache_IAdviseSink_VTable ;
 int DataCache_IDataObject_VTable ;
 int DataCache_IOleCache2_VTable ;
 int DataCache_IOleCacheControl_VTable ;
 int DataCache_IPersistStorage_VTable ;
 int DataCache_IViewObject2_VTable ;
 int DataCache_NDIUnknown_VTable ;
 void* FALSE ;
 int GetProcessHeap () ;
 TYPE_8__* HeapAlloc (int ,int ,int) ;
 int create_automatic_entry (TYPE_8__*,int *) ;
 int list_init (int *) ;

__attribute__((used)) static DataCache* DataCache_Construct(
  REFCLSID clsid,
  LPUNKNOWN pUnkOuter)
{
  DataCache* newObject = 0;




  newObject = HeapAlloc(GetProcessHeap(), 0, sizeof(DataCache));

  if (newObject==0)
    return newObject;




  newObject->IDataObject_iface.lpVtbl = &DataCache_IDataObject_VTable;
  newObject->IUnknown_inner.lpVtbl = &DataCache_NDIUnknown_VTable;
  newObject->IPersistStorage_iface.lpVtbl = &DataCache_IPersistStorage_VTable;
  newObject->IViewObject2_iface.lpVtbl = &DataCache_IViewObject2_VTable;
  newObject->IOleCache2_iface.lpVtbl = &DataCache_IOleCache2_VTable;
  newObject->IOleCacheControl_iface.lpVtbl = &DataCache_IOleCacheControl_VTable;
  newObject->IAdviseSink_iface.lpVtbl = &DataCache_IAdviseSink_VTable;
  newObject->outer_unk = pUnkOuter ? pUnkOuter : &newObject->IUnknown_inner;
  newObject->ref = 1;




  newObject->sinkAspects = 0;
  newObject->sinkAdviseFlag = 0;
  newObject->sinkInterface = 0;
  newObject->clsid = CLSID_NULL;
  newObject->clsid_static = FALSE;
  newObject->presentationStorage = ((void*)0);
  list_init(&newObject->cache_list);
  newObject->last_cache_id = 2;
  newObject->dirty = FALSE;
  newObject->running_object = ((void*)0);

  create_automatic_entry( newObject, clsid );
  newObject->clsid = *clsid;

  return newObject;
}
