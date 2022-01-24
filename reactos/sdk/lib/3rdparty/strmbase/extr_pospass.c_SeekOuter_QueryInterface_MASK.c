#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  IUnknown_inner; void* bAggregatable; int /*<<< orphan*/ * outer_unk; void* bUnkOuterValid; } ;
typedef  int /*<<< orphan*/  REFIID ;
typedef  TYPE_1__ PassThruImpl ;
typedef  int /*<<< orphan*/ * LPVOID ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_NOINTERFACE ; 
 int /*<<< orphan*/  IID_IUnknown ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* TRUE ; 

__attribute__((used)) static HRESULT FUNC4(PassThruImpl *This, REFIID riid, LPVOID *ppv)
{
    if (This->bAggregatable)
        This->bUnkOuterValid = TRUE;

    if (This->outer_unk)
    {
        if (This->bAggregatable)
            return FUNC1(This->outer_unk, riid, ppv);

        if (FUNC3(riid, &IID_IUnknown))
        {
            HRESULT hr;

            FUNC0(&This->IUnknown_inner);
            hr = FUNC1(&This->IUnknown_inner, riid, ppv);
            FUNC2(&This->IUnknown_inner);
            This->bAggregatable = TRUE;
            return hr;
        }

        *ppv = NULL;
        return E_NOINTERFACE;
    }

    return FUNC1(&This->IUnknown_inner, riid, ppv);
}