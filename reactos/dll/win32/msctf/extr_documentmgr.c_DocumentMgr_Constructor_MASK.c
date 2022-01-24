#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_7__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_9__ {int refCount; TYPE_2__ ITfDocumentMgr_iface; int /*<<< orphan*/  CompartmentMgr; int /*<<< orphan*/  TransitoryExtensionSink; int /*<<< orphan*/ * ThreadMgrSink; TYPE_1__ ITfSource_iface; } ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  ITfThreadMgrEventSink ;
typedef  TYPE_2__ ITfDocumentMgr ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_3__ DocumentMgr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  DocumentMgrSourceVtbl ; 
 int /*<<< orphan*/  DocumentMgrVtbl ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  IID_IUnknown ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC3 (char*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

HRESULT FUNC5(ITfThreadMgrEventSink *ThreadMgrSink, ITfDocumentMgr **ppOut)
{
    DocumentMgr *This;

    This = FUNC2(FUNC1(),HEAP_ZERO_MEMORY,sizeof(DocumentMgr));
    if (This == NULL)
        return E_OUTOFMEMORY;

    This->ITfDocumentMgr_iface.lpVtbl = &DocumentMgrVtbl;
    This->ITfSource_iface.lpVtbl = &DocumentMgrSourceVtbl;
    This->refCount = 1;
    This->ThreadMgrSink = ThreadMgrSink;
    FUNC4(&This->TransitoryExtensionSink);

    FUNC0((IUnknown*)&This->ITfDocumentMgr_iface, &IID_IUnknown, (IUnknown**)&This->CompartmentMgr);

    *ppOut = &This->ITfDocumentMgr_iface;
    FUNC3("returning %p\n", *ppOut);
    return S_OK;
}