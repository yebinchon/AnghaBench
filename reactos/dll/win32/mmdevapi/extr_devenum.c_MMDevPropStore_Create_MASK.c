#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_5__ {int ref; scalar_t__ access; int /*<<< orphan*/ * parent; TYPE_2__ IPropertyStore_iface; } ;
typedef  int /*<<< orphan*/  MMDevice ;
typedef  TYPE_1__ MMDevPropStore ;
typedef  TYPE_2__ IPropertyStore ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  E_INVALIDARG ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  MMDevPropVtbl ; 
 scalar_t__ STGM_READ ; 
 scalar_t__ STGM_READWRITE ; 
 scalar_t__ STGM_WRITE ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__) ; 

__attribute__((used)) static HRESULT FUNC3(MMDevice *parent, DWORD access, IPropertyStore **ppv)
{
    MMDevPropStore *This;
    if (access != STGM_READ
        && access != STGM_WRITE
        && access != STGM_READWRITE)
    {
        FUNC2("Invalid access %08x\n", access);
        return E_INVALIDARG;
    }
    This = FUNC1(FUNC0(), 0, sizeof(*This));
    *ppv = &This->IPropertyStore_iface;
    if (!This)
        return E_OUTOFMEMORY;
    This->IPropertyStore_iface.lpVtbl = &MMDevPropVtbl;
    This->ref = 1;
    This->parent = parent;
    This->access = access;
    return S_OK;
}