#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  VARIANT_BOOL ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IObjectIdentity ;
typedef  int /*<<< orphan*/  IDispatch ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  IID_IObjectIdentity ; 
 int /*<<< orphan*/  IID_IUnknown ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  VARIANT_FALSE ; 
 int /*<<< orphan*/  VARIANT_TRUE ; 

__attribute__((used)) static HRESULT FUNC7(IDispatch *disp1, IDispatch *disp2, VARIANT_BOOL *ret)
{
    IObjectIdentity *identity;
    IUnknown *unk1, *unk2;
    HRESULT hres;

    if(disp1 == disp2) {
        *ret = VARIANT_TRUE;
        return S_OK;
    }

    if(!disp1 || !disp2) {
        *ret = VARIANT_FALSE;
        return S_OK;
    }

    hres = FUNC1(disp1, &IID_IUnknown, (void**)&unk1);
    if(FUNC0(hres))
        return hres;

    hres = FUNC1(disp2, &IID_IUnknown, (void**)&unk2);
    if(FUNC0(hres)) {
        FUNC5(unk1);
        return hres;
    }

    if(unk1 == unk2) {
        *ret = VARIANT_TRUE;
    }else {
        hres = FUNC4(unk1, &IID_IObjectIdentity, (void**)&identity);
        if(FUNC6(hres)) {
            hres = FUNC2(identity, unk2);
            FUNC3(identity);
            *ret = hres == S_OK ? VARIANT_TRUE : VARIANT_FALSE;
        }else {
            *ret = VARIANT_FALSE;
        }
    }

    FUNC5(unk1);
    FUNC5(unk2);
    return S_OK;
}