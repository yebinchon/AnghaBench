
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int REFCLSID ;
typedef int IWICComponentInfo ;
typedef int IWICBitmapDecoderInfo ;
typedef int HRESULT ;


 int CreateComponentInfo (int ,int **) ;
 scalar_t__ FAILED (int ) ;
 int IID_IWICBitmapDecoderInfo ;
 int IWICComponentInfo_QueryInterface (int *,int *,void**) ;
 int IWICComponentInfo_Release (int *) ;

HRESULT get_decoder_info(REFCLSID clsid, IWICBitmapDecoderInfo **info)
{
    IWICComponentInfo *compinfo;
    HRESULT hr;

    hr = CreateComponentInfo(clsid, &compinfo);
    if (FAILED(hr)) return hr;

    hr = IWICComponentInfo_QueryInterface(compinfo, &IID_IWICBitmapDecoderInfo,
        (void **)info);

    IWICComponentInfo_Release(compinfo);

    return hr;
}
