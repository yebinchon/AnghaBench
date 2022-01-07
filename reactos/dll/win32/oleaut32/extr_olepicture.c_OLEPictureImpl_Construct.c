
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_13__ ;


struct TYPE_20__ {int yExt; int xExt; TYPE_6__* hmeta; } ;
struct TYPE_21__ {TYPE_4__ wmf; } ;
struct TYPE_23__ {int picType; TYPE_5__ u; } ;
struct TYPE_16__ {int * lpVtbl; } ;
struct TYPE_19__ {int * lpVtbl; } ;
struct TYPE_18__ {int * lpVtbl; } ;
struct TYPE_17__ {int * lpVtbl; } ;
struct TYPE_22__ {int ref; int loadtime_magic; TYPE_7__ desc; TYPE_13__ IPicture_iface; int himetricHeight; int himetricWidth; int bIsDirty; scalar_t__ loadtime_format; int * hbmXor; int * hbmMask; int keepOrigFormat; int fOwn; scalar_t__ hDCCur; int * pCP; TYPE_3__ IConnectionPointContainer_iface; TYPE_2__ IPersistStream_iface; TYPE_1__ IDispatch_iface; } ;
typedef TYPE_6__ OLEPictureImpl ;
typedef TYPE_7__* LPPICTDESC ;
typedef int IUnknown ;
typedef scalar_t__ HRESULT ;
typedef int BOOL ;


 scalar_t__ CreateConnectionPoint (int *,int *,int **) ;
 scalar_t__ E_OUTOFMEMORY ;
 scalar_t__ E_UNEXPECTED ;
 int FALSE ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 TYPE_6__* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,TYPE_6__*) ;
 int IID_IPropertyNotifySink ;
 int IPicture_Release (TYPE_13__*) ;
 int OLEPictureImpl_IConnectionPointContainer_VTable ;
 int OLEPictureImpl_IDispatch_VTable ;
 int OLEPictureImpl_IPersistStream_VTable ;
 int OLEPictureImpl_SetBitmap (TYPE_6__*) ;
 int OLEPictureImpl_SetEMF (TYPE_6__*) ;
 int OLEPictureImpl_SetIcon (TYPE_6__*) ;
 int OLEPictureImpl_VTable ;





 int PICTYPE_UNINITIALIZED ;
 scalar_t__ S_OK ;
 int TRACE (char*,...) ;
 int TRUE ;
 int WARN (char*,int) ;

__attribute__((used)) static HRESULT OLEPictureImpl_Construct(LPPICTDESC pictDesc, BOOL fOwn, OLEPictureImpl **pict)
{
  OLEPictureImpl *newObject;
  HRESULT hr;

  if (pictDesc)
      TRACE("(%p) type = %d\n", pictDesc, pictDesc->picType);




  newObject = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, sizeof(OLEPictureImpl));
  if (!newObject)
    return E_OUTOFMEMORY;




  newObject->IPicture_iface.lpVtbl = &OLEPictureImpl_VTable;
  newObject->IDispatch_iface.lpVtbl = &OLEPictureImpl_IDispatch_VTable;
  newObject->IPersistStream_iface.lpVtbl = &OLEPictureImpl_IPersistStream_VTable;
  newObject->IConnectionPointContainer_iface.lpVtbl = &OLEPictureImpl_IConnectionPointContainer_VTable;

  newObject->pCP = ((void*)0);
  hr = CreateConnectionPoint((IUnknown*)&newObject->IPicture_iface, &IID_IPropertyNotifySink,
                        &newObject->pCP);
  if (hr != S_OK)
  {
    HeapFree(GetProcessHeap(), 0, newObject);
    return hr;
  }





  newObject->ref = 1;
  newObject->hDCCur = 0;

  newObject->fOwn = fOwn;


  newObject->keepOrigFormat = TRUE;

  newObject->hbmMask = ((void*)0);
  newObject->hbmXor = ((void*)0);
  newObject->loadtime_magic = 0xdeadbeef;
  newObject->loadtime_format = 0;
  newObject->bIsDirty = FALSE;

  if (pictDesc) {
      newObject->desc = *pictDesc;

      switch(pictDesc->picType) {
      case 132:
 OLEPictureImpl_SetBitmap(newObject);
 break;

      case 129:
 TRACE("metafile handle %p\n", pictDesc->u.wmf.hmeta);
 newObject->himetricWidth = pictDesc->u.wmf.xExt;
 newObject->himetricHeight = pictDesc->u.wmf.yExt;
 break;

      case 128:

 newObject->himetricWidth = newObject->himetricHeight = 0;
 break;

      case 130:
        OLEPictureImpl_SetIcon(newObject);
        break;

      case 131:
        OLEPictureImpl_SetEMF(newObject);
        break;

      default:
        WARN("Unsupported type %d\n", pictDesc->picType);
        IPicture_Release(&newObject->IPicture_iface);
        return E_UNEXPECTED;
      }
  } else {
      newObject->desc.picType = PICTYPE_UNINITIALIZED;
  }

  TRACE("returning %p\n", newObject);
  *pict = newObject;
  return S_OK;
}
