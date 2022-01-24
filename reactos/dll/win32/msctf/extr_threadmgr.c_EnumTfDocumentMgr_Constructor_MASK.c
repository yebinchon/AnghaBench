#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct list {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_7__ {int refCount; TYPE_1__ IEnumTfDocumentMgrs_iface; struct list* head; int /*<<< orphan*/  index; } ;
typedef  TYPE_1__ IEnumTfDocumentMgrs ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_2__ EnumTfDocumentMgr ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  EnumTfDocumentMgrsVtbl ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC2 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct list*) ; 

__attribute__((used)) static HRESULT FUNC4(struct list* head, IEnumTfDocumentMgrs **ppOut)
{
    EnumTfDocumentMgr *This;

    This = FUNC1(FUNC0(),HEAP_ZERO_MEMORY,sizeof(EnumTfDocumentMgr));
    if (This == NULL)
        return E_OUTOFMEMORY;

    This->IEnumTfDocumentMgrs_iface.lpVtbl= &EnumTfDocumentMgrsVtbl;
    This->refCount = 1;
    This->head = head;
    This->index = FUNC3(This->head);

    FUNC2("returning %p\n", &This->IEnumTfDocumentMgrs_iface);
    *ppOut = &This->IEnumTfDocumentMgrs_iface;
    return S_OK;
}