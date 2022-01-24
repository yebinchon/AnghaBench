#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VARIANT ;
typedef  scalar_t__ UINT ;
struct TYPE_8__ {scalar_t__ dwHint; } ;
struct TYPE_7__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_6__ {int ref; TYPE_2__ IPropertyBag2_iface; TYPE_3__* properties; int /*<<< orphan*/ * values; scalar_t__ prop_count; } ;
typedef  TYPE_1__ PropertyBag ;
typedef  int /*<<< orphan*/  PROPBAG2 ;
typedef  TYPE_2__ IPropertyBag2 ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  PropertyBag_Vtbl ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/  const*) ; 

HRESULT FUNC5(const PROPBAG2 *options, UINT count,
                           IPropertyBag2 **ppPropertyBag2)
{
    UINT i;
    HRESULT res = S_OK;
    PropertyBag *This;

    This = FUNC2(FUNC1(), 0, sizeof(PropertyBag));
    if (!This) return E_OUTOFMEMORY;

    This->IPropertyBag2_iface.lpVtbl = &PropertyBag_Vtbl;
    This->ref = 1;
    This->prop_count = count;

    if (count == 0)
    {
        This->properties = NULL;
        This->values = NULL;
    }
    else
    {
        This->properties = FUNC2(FUNC1(), HEAP_ZERO_MEMORY, sizeof(PROPBAG2)*count);
        This->values = FUNC2(FUNC1(), HEAP_ZERO_MEMORY, sizeof(VARIANT)*count);

        if (!This->properties || !This->values)
            res = E_OUTOFMEMORY;
        else
            for (i=0; i < count; i++)
            {
                res = FUNC4(This->properties+i, options+i);
                if (FUNC0(res))
                    break;
                This->properties[i].dwHint = i+1; /* 0 means unset, so we start with 1 */
            }
    }

    if (FUNC0(res))
    {
        FUNC3(&This->IPropertyBag2_iface);
        *ppPropertyBag2 = NULL;
    }
    else
        *ppPropertyBag2 = &This->IPropertyBag2_iface;

    return res;
}