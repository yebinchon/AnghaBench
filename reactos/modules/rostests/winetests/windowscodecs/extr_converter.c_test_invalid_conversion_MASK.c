#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  IWICBitmapSource_iface; } ;
typedef  int /*<<< orphan*/  IWICBitmapSource ;
typedef  scalar_t__ HRESULT ;
typedef  TYPE_1__ BitmapTestSrc ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  GUID_VendorMicrosoft ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ WINCODEC_ERR_COMPONENTNOTFOUND ; 
 int /*<<< orphan*/  FUNC3 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  testdata_32bppBGRA ; 

__attribute__((used)) static void FUNC4(void)
{
    BitmapTestSrc *src_obj;
    IWICBitmapSource *dst_bitmap;
    HRESULT hr;

    FUNC0(&testdata_32bppBGRA, &src_obj);

    /* convert to a non-pixel-format GUID */
    hr = FUNC2(&GUID_VendorMicrosoft, &src_obj->IWICBitmapSource_iface, &dst_bitmap);
    FUNC3(hr == WINCODEC_ERR_COMPONENTNOTFOUND, "WICConvertBitmapSource returned %x\n", hr);

    FUNC1(src_obj);
}