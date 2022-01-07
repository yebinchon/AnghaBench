
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_14__ {int hemf; } ;
struct TYPE_13__ {int hicon; } ;
struct TYPE_12__ {int hmeta; } ;
struct TYPE_11__ {int * hbitmap; } ;
struct TYPE_15__ {TYPE_4__ emf; TYPE_3__ icon; TYPE_2__ wmf; TYPE_1__ bmp; } ;
struct TYPE_16__ {int picType; TYPE_5__ u; } ;
struct TYPE_17__ {struct TYPE_17__* data; TYPE_6__ desc; int * hbmXor; int * hbmMask; scalar_t__ fOwn; scalar_t__ pCP; } ;
typedef TYPE_7__ OLEPictureImpl ;


 int DeleteEnhMetaFile (int ) ;
 int DeleteMetaFile (int ) ;
 int DeleteObject (int *) ;
 int DestroyIcon (int ) ;
 int FIXME (char*,int) ;
 int GetProcessHeap () ;
 int HeapFree (int ,int ,TYPE_7__*) ;
 int IConnectionPoint_Release (scalar_t__) ;






 int TRACE (char*,TYPE_7__*) ;

__attribute__((used)) static void OLEPictureImpl_Destroy(OLEPictureImpl* Obj)
{
  TRACE("(%p)\n", Obj);

  if (Obj->pCP)
    IConnectionPoint_Release(Obj->pCP);

  if(Obj->fOwn) {
    switch(Obj->desc.picType) {
    case 133:
      DeleteObject(Obj->desc.u.bmp.hbitmap);
      if (Obj->hbmMask != ((void*)0)) DeleteObject(Obj->hbmMask);
      if (Obj->hbmXor != ((void*)0)) DeleteObject(Obj->hbmXor);
      break;
    case 130:
      DeleteMetaFile(Obj->desc.u.wmf.hmeta);
      break;
    case 131:
      DestroyIcon(Obj->desc.u.icon.hicon);
      break;
    case 132:
      DeleteEnhMetaFile(Obj->desc.u.emf.hemf);
      break;
    case 129:
    case 128:

      break;
    default:
      FIXME("Unsupported type %d - unable to delete\n", Obj->desc.picType);
      break;
    }
  }
  HeapFree(GetProcessHeap(), 0, Obj->data);
  HeapFree(GetProcessHeap(), 0, Obj);
}
