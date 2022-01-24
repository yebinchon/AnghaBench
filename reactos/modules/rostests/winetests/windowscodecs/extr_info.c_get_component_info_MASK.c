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
typedef  int /*<<< orphan*/  IWICComponentInfo ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  GUID ;

/* Variables and functions */
 int /*<<< orphan*/  CLSCTX_INPROC_SERVER ; 
 int /*<<< orphan*/  CLSID_WICImagingFactory ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  IID_IWICImagingFactory ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC4 (int,char*,scalar_t__) ; 

__attribute__((used)) static HRESULT FUNC5(const GUID *clsid, IWICComponentInfo **result)
{
    IWICImagingFactory *factory;
    HRESULT hr;

    hr = FUNC0(&CLSID_WICImagingFactory, NULL, CLSCTX_INPROC_SERVER,
        &IID_IWICImagingFactory, (void**)&factory);
    FUNC4(hr == S_OK, "CoCreateInstance failed, hr=%x\n", hr);
    if (FUNC1(hr)) return hr;

    hr = FUNC2(factory, clsid, result);

    FUNC3(factory);

    return hr;
}