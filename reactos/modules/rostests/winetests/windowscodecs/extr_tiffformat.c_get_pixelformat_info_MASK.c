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
typedef  int /*<<< orphan*/  UINT ;
typedef  int /*<<< orphan*/  IWICPixelFormatInfo2 ;
typedef  int /*<<< orphan*/  IWICComponentInfo ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  GUID ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  IID_IWICPixelFormatInfo ; 
 int /*<<< orphan*/  IID_IWICPixelFormatInfo2 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  factory ; 
 int /*<<< orphan*/  FUNC7 (int,char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static HRESULT FUNC9(const GUID *format, UINT *bpp, UINT *channels, BOOL *trasparency)
{
    HRESULT hr;
    IWICComponentInfo *info;
    IWICPixelFormatInfo2 *formatinfo;

    hr = FUNC2(factory, format, &info);
    FUNC7(hr == S_OK, "CreateComponentInfo(%s) error %#x\n", FUNC8(format), hr);
    if (hr == S_OK)
    {
        hr = FUNC0(info, &IID_IWICPixelFormatInfo2, (void **)&formatinfo);
        if (hr == S_OK)
        {
            hr = FUNC6(formatinfo, trasparency);
            FUNC7(hr == S_OK, "SupportsTransparency error %#x\n", hr);
            FUNC5(formatinfo);
        }
        hr = FUNC0(info, &IID_IWICPixelFormatInfo, (void **)&formatinfo);
        if (hr == S_OK)
        {
            hr = FUNC3(formatinfo, bpp);
            FUNC7(hr == S_OK, "GetBitsPerPixel error %#x\n", hr);
            hr = FUNC4(formatinfo, channels);
            FUNC7(hr == S_OK, "GetChannelCount error %#x\n", hr);
            FUNC5(formatinfo);
        }
        FUNC1(info);
    }
    return hr;
}