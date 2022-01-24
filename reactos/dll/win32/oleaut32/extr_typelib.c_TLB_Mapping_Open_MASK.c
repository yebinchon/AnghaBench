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
struct TYPE_7__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_6__ {int refs; scalar_t__ file; TYPE_2__ IUnknown_iface; int /*<<< orphan*/ * typelib_base; int /*<<< orphan*/ * mapping; } ;
typedef  TYPE_1__ TLB_Mapping ;
typedef  int /*<<< orphan*/ * LPVOID ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  TYPE_2__ IUnknown ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (scalar_t__,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  FILE_MAP_READ ; 
 int /*<<< orphan*/  FILE_SHARE_READ ; 
 int /*<<< orphan*/  GENERIC_READ ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OPEN_EXISTING ; 
 int PAGE_READONLY ; 
 int SEC_COMMIT ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  TLB_Mapping_Vtable ; 
 int /*<<< orphan*/  TYPE_E_CANTLOADLIBRARY ; 
 TYPE_1__* FUNC5 (int) ; 

__attribute__((used)) static HRESULT FUNC6(LPCWSTR path, LPVOID *ppBase, DWORD *pdwTLBLength, IUnknown **ppFile)
{
    TLB_Mapping *This;

    This = FUNC5(sizeof(TLB_Mapping));
    if (!This)
        return E_OUTOFMEMORY;

    This->IUnknown_iface.lpVtbl = &TLB_Mapping_Vtable;
    This->refs = 1;
    This->file = INVALID_HANDLE_VALUE;
    This->mapping = NULL;
    This->typelib_base = NULL;

    This->file = FUNC1(path, GENERIC_READ, FILE_SHARE_READ, NULL, OPEN_EXISTING, 0, 0);
    if (INVALID_HANDLE_VALUE != This->file)
    {
        This->mapping = FUNC0(This->file, NULL, PAGE_READONLY | SEC_COMMIT, 0, 0, NULL);
        if (This->mapping)
        {
            This->typelib_base = FUNC4(This->mapping, FILE_MAP_READ, 0, 0, 0);
            if(This->typelib_base)
            {
                /* retrieve file size */
                *pdwTLBLength = FUNC2(This->file, NULL);
                *ppBase = This->typelib_base;
                *ppFile = &This->IUnknown_iface;
                return S_OK;
            }
        }
    }

    FUNC3(&This->IUnknown_iface);
    return TYPE_E_CANTLOADLIBRARY;
}