#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int ULONG ;
struct TYPE_5__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_4__ {int refCount; int cMediaTypes; TYPE_2__ IEnumMediaTypes_iface; int /*<<< orphan*/ * pMediaTypes; scalar_t__ uIndex; } ;
typedef  TYPE_1__ IEnumMediaTypesImpl ;
typedef  TYPE_2__ IEnumMediaTypes ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  AM_MEDIA_TYPE ;

/* Variables and functions */
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IEnumMediaTypesImpl_Vtbl ; 
 int /*<<< orphan*/  S_OK ; 

__attribute__((used)) static HRESULT FUNC5(const AM_MEDIA_TYPE * pMediaTypes, ULONG cMediaTypes, IEnumMediaTypes ** ppEnum)
{
    ULONG i;
    IEnumMediaTypesImpl * pEnumMediaTypes = FUNC0(sizeof(IEnumMediaTypesImpl));

    if (!pEnumMediaTypes)
    {
        *ppEnum = NULL;
        return E_OUTOFMEMORY;
    }
    pEnumMediaTypes->IEnumMediaTypes_iface.lpVtbl = &IEnumMediaTypesImpl_Vtbl;
    pEnumMediaTypes->refCount = 1;
    pEnumMediaTypes->uIndex = 0;
    pEnumMediaTypes->cMediaTypes = cMediaTypes;
    pEnumMediaTypes->pMediaTypes = FUNC0(sizeof(AM_MEDIA_TYPE) * cMediaTypes);
    for (i = 0; i < cMediaTypes; i++)
        if (FUNC3(FUNC2(&pEnumMediaTypes->pMediaTypes[i], &pMediaTypes[i])))
        {
           while (i--)
              FUNC4(&pEnumMediaTypes->pMediaTypes[i]);
           FUNC1(pEnumMediaTypes->pMediaTypes);
           return E_OUTOFMEMORY;
        }
    *ppEnum = &pEnumMediaTypes->IEnumMediaTypes_iface;
    return S_OK;
}