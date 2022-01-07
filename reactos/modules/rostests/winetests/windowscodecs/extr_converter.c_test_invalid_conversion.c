
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int IWICBitmapSource_iface; } ;
typedef int IWICBitmapSource ;
typedef scalar_t__ HRESULT ;
typedef TYPE_1__ BitmapTestSrc ;


 int CreateTestBitmap (int *,TYPE_1__**) ;
 int DeleteTestBitmap (TYPE_1__*) ;
 int GUID_VendorMicrosoft ;
 scalar_t__ WICConvertBitmapSource (int *,int *,int **) ;
 scalar_t__ WINCODEC_ERR_COMPONENTNOTFOUND ;
 int ok (int,char*,scalar_t__) ;
 int testdata_32bppBGRA ;

__attribute__((used)) static void test_invalid_conversion(void)
{
    BitmapTestSrc *src_obj;
    IWICBitmapSource *dst_bitmap;
    HRESULT hr;

    CreateTestBitmap(&testdata_32bppBGRA, &src_obj);


    hr = WICConvertBitmapSource(&GUID_VendorMicrosoft, &src_obj->IWICBitmapSource_iface, &dst_bitmap);
    ok(hr == WINCODEC_ERR_COMPONENTNOTFOUND, "WICConvertBitmapSource returned %x\n", hr);

    DeleteTestBitmap(src_obj);
}
