
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_4__ {int * pstrName; int member_0; } ;
typedef TYPE_1__ PROPBAG2 ;
typedef int IPropertyBag2 ;
typedef scalar_t__ HRESULT ;
typedef int CLSID ;


 int CLSID_WICBmpEncoder ;
 int CLSID_WICJpegEncoder ;
 int CLSID_WICPngEncoder ;
 int CLSID_WICTiffEncoder ;
 int CoTaskMemFree (int *) ;
 scalar_t__ FAILED (scalar_t__) ;
 scalar_t__ IPropertyBag2_CountProperties (int *,int*) ;
 scalar_t__ IPropertyBag2_GetPropertyInfo (int *,int,int,TYPE_1__*,int*) ;
 scalar_t__ IsEqualCLSID (int const*,int *) ;
 int SUCCEEDED (scalar_t__) ;
 scalar_t__ S_OK ;
 scalar_t__ WINCODEC_ERR_VALUEOUTOFRANGE ;
 int min (int,int) ;
 int ok (int,char*,...) ;
 int test_specific_encoder_properties (int *,int ,TYPE_1__*,int) ;
 int testdata_bmp_props ;
 int testdata_jpeg_props ;
 int testdata_png_props ;
 int testdata_tiff_props ;

__attribute__((used)) static void test_encoder_properties(const CLSID* clsid_encoder, IPropertyBag2 *options)
{
    HRESULT hr;
    ULONG cProperties = 0;
    ULONG cProperties2 = 0;
    PROPBAG2 all_props[64] = {{0}};
    int i;


    {
        hr = IPropertyBag2_CountProperties(options, &cProperties);
        ok(SUCCEEDED(hr), "Reading property count, hr=%x\n", hr);
    }


    {
        hr = IPropertyBag2_GetPropertyInfo(options, cProperties, 1, all_props, &cProperties2);
        ok(hr == WINCODEC_ERR_VALUEOUTOFRANGE, "IPropertyBag2::GetPropertyInfo - iProperty out of bounce handled wrong, hr=%x\n", hr);

        hr = IPropertyBag2_GetPropertyInfo(options, 0, cProperties+1, all_props, &cProperties2);
        ok(hr == WINCODEC_ERR_VALUEOUTOFRANGE, "IPropertyBag2::GetPropertyInfo - cProperty out of bounce handled wrong, hr=%x\n", hr);

        if (cProperties == 0)
        {
            cProperties2 = cProperties;
            hr = S_OK;
        }
        else
        {
            hr = IPropertyBag2_GetPropertyInfo(options, 0, min(64, cProperties), all_props, &cProperties2);
            ok(SUCCEEDED(hr), "Reading infos from property bag failed, hr=%x\n", hr);
        }

        if (FAILED(hr))
            return;

        ok(cProperties == cProperties2, "Mismatch of property count (IPropertyBag2::CountProperties=%i, IPropertyBag2::GetPropertyInfo=%i)\n",
           (int)cProperties, (int)cProperties2);
    }

    if (IsEqualCLSID(clsid_encoder, &CLSID_WICTiffEncoder))
        test_specific_encoder_properties(options, testdata_tiff_props, all_props, cProperties2);
    else if (IsEqualCLSID(clsid_encoder, &CLSID_WICPngEncoder))
        test_specific_encoder_properties(options, testdata_png_props, all_props, cProperties2);
    else if (IsEqualCLSID(clsid_encoder, &CLSID_WICJpegEncoder))
        test_specific_encoder_properties(options, testdata_jpeg_props, all_props, cProperties2);
    else if (IsEqualCLSID(clsid_encoder, &CLSID_WICBmpEncoder))
        test_specific_encoder_properties(options, testdata_bmp_props, all_props, cProperties2);

    for (i=0; i < cProperties2; i++)
    {
        ok(all_props[i].pstrName != ((void*)0), "Unset property name in output of IPropertyBag2::GetPropertyInfo\n");
        CoTaskMemFree(all_props[i].pstrName);
    }
}
