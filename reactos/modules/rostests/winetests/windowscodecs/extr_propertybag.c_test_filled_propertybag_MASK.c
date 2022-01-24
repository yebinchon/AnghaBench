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
struct TYPE_4__ {int /*<<< orphan*/  member_0; } ;
struct TYPE_5__ {TYPE_1__ member_5; int /*<<< orphan*/  member_4; int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_2__ PROPBAG2 ;
typedef  int /*<<< orphan*/  LPOLESTR ;
typedef  int /*<<< orphan*/  IWICComponentFactory ;
typedef  int /*<<< orphan*/  IPropertyBag2 ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  CLSCTX_INPROC_SERVER ; 
 int /*<<< orphan*/  CLSID_WICImagingFactory ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  IID_IWICComponentFactory ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,TYPE_2__*,int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PROPBAG2_TYPE_DATA ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  VT_R4 ; 
 int /*<<< orphan*/  VT_UI1 ; 
 int /*<<< orphan*/  FUNC5 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wszTestProperty1 ; 
 int /*<<< orphan*/  wszTestProperty2 ; 

__attribute__((used)) static void FUNC10(void)
{
    HRESULT hr;
    IWICComponentFactory *factory;
    IPropertyBag2 *property;
    PROPBAG2 opts[2]= {
        {PROPBAG2_TYPE_DATA, VT_UI1, 0, 0, (LPOLESTR)wszTestProperty1, 0},
        {PROPBAG2_TYPE_DATA, VT_R4, 0, 0, (LPOLESTR)wszTestProperty2, 0}
    };

    hr = FUNC0(&CLSID_WICImagingFactory, NULL, CLSCTX_INPROC_SERVER,
                          &IID_IWICComponentFactory, (void**)&factory);
    FUNC5(hr == S_OK, "CoCreateInstance failed, hr=%x\n", hr);

    hr = FUNC3(factory, opts, 2, &property);

    FUNC5(hr == S_OK, "Creating EncoderPropertyBag failed, hr=%x\n", hr);
    if (FUNC1(hr)) return;

    FUNC6(property, 2);

    FUNC7(property, 2);

    FUNC9(property);

    FUNC8(property);

    FUNC2(property);

    FUNC4(factory);
}