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
struct TYPE_5__ {TYPE_2__ IMarshal_iface; void* dest_context_data; int /*<<< orphan*/  dest_context; scalar_t__ ref; } ;
typedef  TYPE_1__ StdMarshalImpl ;
typedef  int /*<<< orphan*/  REFIID ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  StdMarshalVtbl ; 

__attribute__((used)) static HRESULT FUNC5(REFIID riid, DWORD dest_context, void *dest_context_data, void** ppvObject)
{
    HRESULT hr;

    StdMarshalImpl *pStdMarshal = FUNC2(FUNC1(), 0, sizeof(StdMarshalImpl));
    if (!pStdMarshal)
        return E_OUTOFMEMORY;

    pStdMarshal->IMarshal_iface.lpVtbl = &StdMarshalVtbl;
    pStdMarshal->ref = 0;
    pStdMarshal->dest_context = dest_context;
    pStdMarshal->dest_context_data = dest_context_data;

    hr = FUNC4(&pStdMarshal->IMarshal_iface, riid, ppvObject);
    if (FUNC0(hr))
        FUNC3(FUNC1(), 0, pStdMarshal);

    return hr;
}