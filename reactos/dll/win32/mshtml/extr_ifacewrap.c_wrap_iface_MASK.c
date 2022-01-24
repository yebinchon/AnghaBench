#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  const* lpVtbl; } ;
struct TYPE_8__ {int ref; TYPE_2__ IUnknown_iface; TYPE_2__* ref_unk; TYPE_2__* iface; } ;
typedef  TYPE_1__ iface_wrapper_t ;
typedef  int /*<<< orphan*/  IUnknownVtbl ;
typedef  TYPE_2__ IUnknown ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  S_OK ; 
 TYPE_1__* FUNC1 (int) ; 
 scalar_t__ wrapper_vtbl ; 

HRESULT FUNC2(IUnknown *iface, IUnknown *ref_unk, IUnknown **ret)
{
    iface_wrapper_t *wrapper;

    wrapper = FUNC1(sizeof(*wrapper));
    if(!wrapper)
        return E_OUTOFMEMORY;

    wrapper->IUnknown_iface.lpVtbl = (const IUnknownVtbl*)wrapper_vtbl;
    wrapper->ref = 1;

    FUNC0(iface);
    wrapper->iface = iface;

    FUNC0(ref_unk);
    wrapper->ref_unk = ref_unk;

    *ret = &wrapper->IUnknown_iface;
    return S_OK;
}