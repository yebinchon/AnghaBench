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
typedef  int /*<<< orphan*/  IWICImagingFactory ;
typedef  int /*<<< orphan*/  IWICBitmapDecoder ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  CLSCTX_INPROC_SERVER ; 
 int /*<<< orphan*/  CLSID_WICImagingFactory ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 scalar_t__ E_INVALIDARG ; 
 int /*<<< orphan*/  GUID_ContainerFormatBmp ; 
 int /*<<< orphan*/  GUID_VendorMicrosoft ; 
 int /*<<< orphan*/  IID_IWICImagingFactory ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC4 (int,char*,scalar_t__) ; 

__attribute__((used)) static void FUNC5(void)
{
    IWICBitmapDecoder *decoder;
    IWICImagingFactory *factory;
    HRESULT hr;

    hr = FUNC0(&CLSID_WICImagingFactory, NULL, CLSCTX_INPROC_SERVER,
        &IID_IWICImagingFactory, (void **)&factory);
    FUNC4(hr == S_OK, "CoCreateInstance error %#x\n", hr);

    hr = FUNC2(factory, NULL, NULL, NULL);
    FUNC4(hr == E_INVALIDARG, "expected E_INVALIDARG, got %#x\n", hr);

    hr = FUNC2(factory, NULL, NULL, &decoder);
    FUNC4(hr == E_INVALIDARG, "expected E_INVALIDARG, got %#x\n", hr);

    hr = FUNC2(factory, &GUID_ContainerFormatBmp, NULL, &decoder);
    FUNC4(hr == S_OK, "CreateDecoder error %#x\n", hr);
    FUNC1(decoder);

    hr = FUNC2(factory, &GUID_ContainerFormatBmp, &GUID_VendorMicrosoft, &decoder);
    FUNC4(hr == S_OK, "CreateDecoder error %#x\n", hr);
    FUNC1(decoder);

    FUNC3(factory);
}