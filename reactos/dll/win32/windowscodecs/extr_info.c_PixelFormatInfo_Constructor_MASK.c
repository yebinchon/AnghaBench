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
struct TYPE_6__ {int /*<<< orphan*/  const* lpVtbl; } ;
struct TYPE_8__ {int ref; int /*<<< orphan*/  clsid; TYPE_1__ IWICComponentInfo_iface; } ;
struct TYPE_7__ {TYPE_3__ base; int /*<<< orphan*/  classkey; } ;
typedef  int /*<<< orphan*/ * REFCLSID ;
typedef  TYPE_2__ PixelFormatInfo ;
typedef  int /*<<< orphan*/  IWICComponentInfoVtbl ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  TYPE_3__ ComponentInfo ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PixelFormatInfo_Vtbl ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 

__attribute__((used)) static HRESULT FUNC3(HKEY classkey, REFCLSID clsid, ComponentInfo **ret)
{
    PixelFormatInfo *This;

    This = FUNC1(FUNC0(), 0, sizeof(PixelFormatInfo));
    if (!This)
    {
        FUNC2(classkey);
        return E_OUTOFMEMORY;
    }

    This->base.IWICComponentInfo_iface.lpVtbl = (const IWICComponentInfoVtbl*)&PixelFormatInfo_Vtbl;
    This->base.ref = 1;
    This->classkey = classkey;
    This->base.clsid = *clsid;

    *ret = &This->base;
    return S_OK;
}