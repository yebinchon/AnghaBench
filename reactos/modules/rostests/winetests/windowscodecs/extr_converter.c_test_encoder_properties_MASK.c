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
typedef  int ULONG ;
struct TYPE_4__ {int /*<<< orphan*/ * pstrName; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ PROPBAG2 ;
typedef  int /*<<< orphan*/  IPropertyBag2 ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  CLSID ;

/* Variables and functions */
 int /*<<< orphan*/  CLSID_WICBmpEncoder ; 
 int /*<<< orphan*/  CLSID_WICJpegEncoder ; 
 int /*<<< orphan*/  CLSID_WICPngEncoder ; 
 int /*<<< orphan*/  CLSID_WICTiffEncoder ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int,int,TYPE_1__*,int*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ S_OK ; 
 scalar_t__ WINCODEC_ERR_VALUEOUTOFRANGE ; 
 int FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  testdata_bmp_props ; 
 int /*<<< orphan*/  testdata_jpeg_props ; 
 int /*<<< orphan*/  testdata_png_props ; 
 int /*<<< orphan*/  testdata_tiff_props ; 

__attribute__((used)) static void FUNC9(const CLSID* clsid_encoder, IPropertyBag2 *options)
{
    HRESULT hr;
    ULONG cProperties = 0;
    ULONG cProperties2 = 0;
    PROPBAG2 all_props[64] = {{0}}; /* Should be enough for every encoder out there */
    int i;

    /* CountProperties */
    {
        hr = FUNC2(options, &cProperties);
        FUNC7(FUNC5(hr), "Reading property count, hr=%x\n", hr);
    }

    /* GetPropertyInfo */
    {
        hr = FUNC3(options, cProperties, 1, all_props, &cProperties2);
        FUNC7(hr == WINCODEC_ERR_VALUEOUTOFRANGE, "IPropertyBag2::GetPropertyInfo - iProperty out of bounce handled wrong, hr=%x\n", hr);

        hr = FUNC3(options, 0, cProperties+1, all_props, &cProperties2);
        FUNC7(hr == WINCODEC_ERR_VALUEOUTOFRANGE, "IPropertyBag2::GetPropertyInfo - cProperty out of bounce handled wrong, hr=%x\n", hr);

        if (cProperties == 0) /* GetPropertyInfo can be called for zero items on Windows 8 but not on Windows 7 (wine behaves like Win8) */
        {
            cProperties2 = cProperties;
            hr = S_OK;
        }
        else
        {
            hr = FUNC3(options, 0, FUNC6(64, cProperties), all_props, &cProperties2);
            FUNC7(FUNC5(hr), "Reading infos from property bag failed, hr=%x\n", hr);
        }

        if (FUNC1(hr))
            return;

        FUNC7(cProperties == cProperties2, "Mismatch of property count (IPropertyBag2::CountProperties=%i, IPropertyBag2::GetPropertyInfo=%i)\n",
           (int)cProperties, (int)cProperties2);
    }

    if (FUNC4(clsid_encoder, &CLSID_WICTiffEncoder))
        FUNC8(options, testdata_tiff_props, all_props, cProperties2);
    else if (FUNC4(clsid_encoder, &CLSID_WICPngEncoder))
        FUNC8(options, testdata_png_props, all_props, cProperties2);
    else if (FUNC4(clsid_encoder, &CLSID_WICJpegEncoder))
        FUNC8(options, testdata_jpeg_props, all_props, cProperties2);
    else if (FUNC4(clsid_encoder, &CLSID_WICBmpEncoder))
        FUNC8(options, testdata_bmp_props, all_props, cProperties2);

    for (i=0; i < cProperties2; i++)
    {
        FUNC7(all_props[i].pstrName != NULL, "Unset property name in output of IPropertyBag2::GetPropertyInfo\n");
        FUNC0(all_props[i].pstrName);
    }
}