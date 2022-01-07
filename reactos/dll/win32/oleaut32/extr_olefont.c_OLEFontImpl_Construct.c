
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_9__ ;
typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_23__ {int fStrikethrough; int fUnderline; int fItalic; int sCharset; int sWeight; int cySize; int lpstrName; } ;
struct TYPE_21__ {int * lpVtbl; } ;
struct TYPE_20__ {int cbSizeofstruct; int fStrikethrough; int fUnderline; int fItalic; int sCharset; int sWeight; int cySize; int lpstrName; } ;
struct TYPE_19__ {int * lpVtbl; } ;
struct TYPE_18__ {int * lpVtbl; } ;
struct TYPE_17__ {int * lpVtbl; } ;
struct TYPE_16__ {int * lpVtbl; } ;
struct TYPE_15__ {int * lpVtbl; } ;
struct TYPE_22__ {int ref; long cyHimetric; int * pFontEventsCP; int * pPropertyNotifyCP; TYPE_7__ IFont_iface; int cyLogical; int dirty; scalar_t__ gdiFont; TYPE_6__ description; TYPE_5__ IPersistStreamInit_iface; TYPE_4__ IPersistPropertyBag_iface; TYPE_3__ IConnectionPointContainer_iface; TYPE_2__ IPersistStream_iface; TYPE_1__ IDispatch_iface; } ;
typedef TYPE_8__ OLEFontImpl ;
typedef int IUnknown ;
typedef TYPE_9__ FONTDESC ;


 int CreateConnectionPoint (int *,int *,int **) ;
 int GetDeviceCaps (int ,int ) ;
 int GetProcessHeap () ;
 TYPE_8__* HeapAlloc (int ,int ,int) ;
 int IID_IFontEventsDisp ;
 int IID_IPropertyNotifySink ;
 int InterlockedIncrement (int *) ;
 int LOGPIXELSY ;
 int OLEFontImpl_Destroy (TYPE_8__*) ;
 int OLEFontImpl_IConnectionPointContainer_VTable ;
 int OLEFontImpl_IDispatch_VTable ;
 int OLEFontImpl_IPersistPropertyBag_VTable ;
 int OLEFontImpl_IPersistStreamInit_VTable ;
 int OLEFontImpl_IPersistStream_VTable ;
 int OLEFontImpl_VTable ;
 int TRACE (char*,TYPE_8__*) ;
 int TRUE ;
 int get_dc () ;
 int ifont_cnt ;
 int strdupW (int ) ;

__attribute__((used)) static OLEFontImpl* OLEFontImpl_Construct(const FONTDESC *fontDesc)
{
  OLEFontImpl* newObject;

  newObject = HeapAlloc(GetProcessHeap(), 0, sizeof(OLEFontImpl));

  if (newObject==0)
    return newObject;

  newObject->IFont_iface.lpVtbl = &OLEFontImpl_VTable;
  newObject->IDispatch_iface.lpVtbl = &OLEFontImpl_IDispatch_VTable;
  newObject->IPersistStream_iface.lpVtbl = &OLEFontImpl_IPersistStream_VTable;
  newObject->IConnectionPointContainer_iface.lpVtbl = &OLEFontImpl_IConnectionPointContainer_VTable;
  newObject->IPersistPropertyBag_iface.lpVtbl = &OLEFontImpl_IPersistPropertyBag_VTable;
  newObject->IPersistStreamInit_iface.lpVtbl = &OLEFontImpl_IPersistStreamInit_VTable;

  newObject->ref = 1;

  newObject->description.cbSizeofstruct = sizeof(FONTDESC);
  newObject->description.lpstrName = strdupW(fontDesc->lpstrName);
  newObject->description.cySize = fontDesc->cySize;
  newObject->description.sWeight = fontDesc->sWeight;
  newObject->description.sCharset = fontDesc->sCharset;
  newObject->description.fItalic = fontDesc->fItalic;
  newObject->description.fUnderline = fontDesc->fUnderline;
  newObject->description.fStrikethrough = fontDesc->fStrikethrough;

  newObject->gdiFont = 0;
  newObject->dirty = TRUE;
  newObject->cyLogical = GetDeviceCaps(get_dc(), LOGPIXELSY);
  newObject->cyHimetric = 2540L;
  newObject->pPropertyNotifyCP = ((void*)0);
  newObject->pFontEventsCP = ((void*)0);

  CreateConnectionPoint((IUnknown*)&newObject->IFont_iface, &IID_IPropertyNotifySink, &newObject->pPropertyNotifyCP);
  CreateConnectionPoint((IUnknown*)&newObject->IFont_iface, &IID_IFontEventsDisp, &newObject->pFontEventsCP);

  if (!newObject->pPropertyNotifyCP || !newObject->pFontEventsCP)
  {
    OLEFontImpl_Destroy(newObject);
    return ((void*)0);
  }

  InterlockedIncrement(&ifont_cnt);

  TRACE("returning %p\n", newObject);
  return newObject;
}
