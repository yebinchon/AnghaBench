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
typedef  int /*<<< orphan*/  REFCLSID ;
typedef  int /*<<< orphan*/  IWICComponentInfo ;
typedef  int /*<<< orphan*/  IWICBitmapDecoderInfo ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IID_IWICBitmapDecoderInfo ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

HRESULT FUNC4(REFCLSID clsid, IWICBitmapDecoderInfo **info)
{
    IWICComponentInfo *compinfo;
    HRESULT hr;

    hr = FUNC0(clsid, &compinfo);
    if (FUNC1(hr)) return hr;

    hr = FUNC2(compinfo, &IID_IWICBitmapDecoderInfo,
        (void **)info);

    FUNC3(compinfo);

    return hr;
}