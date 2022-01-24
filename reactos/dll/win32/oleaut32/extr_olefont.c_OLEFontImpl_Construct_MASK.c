#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_9__ ;
typedef  struct TYPE_22__   TYPE_8__ ;
typedef  struct TYPE_21__   TYPE_7__ ;
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_23__ {int /*<<< orphan*/  fStrikethrough; int /*<<< orphan*/  fUnderline; int /*<<< orphan*/  fItalic; int /*<<< orphan*/  sCharset; int /*<<< orphan*/  sWeight; int /*<<< orphan*/  cySize; int /*<<< orphan*/  lpstrName; } ;
struct TYPE_21__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_20__ {int cbSizeofstruct; int /*<<< orphan*/  fStrikethrough; int /*<<< orphan*/  fUnderline; int /*<<< orphan*/  fItalic; int /*<<< orphan*/  sCharset; int /*<<< orphan*/  sWeight; int /*<<< orphan*/  cySize; int /*<<< orphan*/  lpstrName; } ;
struct TYPE_19__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_18__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_17__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_16__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_15__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_22__ {int ref; long cyHimetric; int /*<<< orphan*/ * pFontEventsCP; int /*<<< orphan*/ * pPropertyNotifyCP; TYPE_7__ IFont_iface; int /*<<< orphan*/  cyLogical; int /*<<< orphan*/  dirty; scalar_t__ gdiFont; TYPE_6__ description; TYPE_5__ IPersistStreamInit_iface; TYPE_4__ IPersistPropertyBag_iface; TYPE_3__ IConnectionPointContainer_iface; TYPE_2__ IPersistStream_iface; TYPE_1__ IDispatch_iface; } ;
typedef  TYPE_8__ OLEFontImpl ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  TYPE_9__ FONTDESC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_8__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  IID_IFontEventsDisp ; 
 int /*<<< orphan*/  IID_IPropertyNotifySink ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LOGPIXELSY ; 
 int /*<<< orphan*/  FUNC5 (TYPE_8__*) ; 
 int /*<<< orphan*/  OLEFontImpl_IConnectionPointContainer_VTable ; 
 int /*<<< orphan*/  OLEFontImpl_IDispatch_VTable ; 
 int /*<<< orphan*/  OLEFontImpl_IPersistPropertyBag_VTable ; 
 int /*<<< orphan*/  OLEFontImpl_IPersistStreamInit_VTable ; 
 int /*<<< orphan*/  OLEFontImpl_IPersistStream_VTable ; 
 int /*<<< orphan*/  OLEFontImpl_VTable ; 
 int /*<<< orphan*/  FUNC6 (char*,TYPE_8__*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  ifont_cnt ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static OLEFontImpl* FUNC9(const FONTDESC *fontDesc)
{
  OLEFontImpl* newObject;

  newObject = FUNC3(FUNC2(), 0, sizeof(OLEFontImpl));

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
  newObject->description.lpstrName      = FUNC8(fontDesc->lpstrName);
  newObject->description.cySize         = fontDesc->cySize;
  newObject->description.sWeight        = fontDesc->sWeight;
  newObject->description.sCharset       = fontDesc->sCharset;
  newObject->description.fItalic        = fontDesc->fItalic;
  newObject->description.fUnderline     = fontDesc->fUnderline;
  newObject->description.fStrikethrough = fontDesc->fStrikethrough;

  newObject->gdiFont  = 0;
  newObject->dirty = TRUE;
  newObject->cyLogical  = FUNC1(FUNC7(), LOGPIXELSY);
  newObject->cyHimetric = 2540L;
  newObject->pPropertyNotifyCP = NULL;
  newObject->pFontEventsCP = NULL;

  FUNC0((IUnknown*)&newObject->IFont_iface, &IID_IPropertyNotifySink, &newObject->pPropertyNotifyCP);
  FUNC0((IUnknown*)&newObject->IFont_iface, &IID_IFontEventsDisp, &newObject->pFontEventsCP);

  if (!newObject->pPropertyNotifyCP || !newObject->pFontEventsCP)
  {
    FUNC5(newObject);
    return NULL;
  }

  FUNC4(&ifont_cnt);

  FUNC6("returning %p\n", newObject);
  return newObject;
}