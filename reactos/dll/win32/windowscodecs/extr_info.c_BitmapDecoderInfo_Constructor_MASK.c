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
struct TYPE_7__ {int /*<<< orphan*/  const* lpVtbl; } ;
struct TYPE_8__ {int ref; int /*<<< orphan*/  clsid; TYPE_1__ IWICComponentInfo_iface; } ;
struct TYPE_9__ {TYPE_2__ base; int /*<<< orphan*/  classkey; } ;
typedef  int /*<<< orphan*/ * REFCLSID ;
typedef  int /*<<< orphan*/  IWICComponentInfoVtbl ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  TYPE_2__ ComponentInfo ;
typedef  TYPE_3__ BitmapDecoderInfo ;

/* Variables and functions */
 int /*<<< orphan*/  BitmapDecoderInfo_Vtbl ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 TYPE_3__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 

__attribute__((used)) static HRESULT FUNC3(HKEY classkey, REFCLSID clsid, ComponentInfo **ret)
{
    BitmapDecoderInfo *This;

    This = FUNC1(sizeof(BitmapDecoderInfo));
    if (!This)
    {
        FUNC0(classkey);
        return E_OUTOFMEMORY;
    }

    This->base.IWICComponentInfo_iface.lpVtbl = (const IWICComponentInfoVtbl*)&BitmapDecoderInfo_Vtbl;
    This->base.ref = 1;
    This->classkey = classkey;
    This->base.clsid = *clsid;

    FUNC2(This);

    *ret = &This->base;
    return S_OK;
}