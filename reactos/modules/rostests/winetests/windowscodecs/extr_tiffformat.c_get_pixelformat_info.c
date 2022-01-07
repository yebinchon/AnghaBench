
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int IWICPixelFormatInfo2 ;
typedef int IWICComponentInfo ;
typedef scalar_t__ HRESULT ;
typedef int GUID ;
typedef int BOOL ;


 int IID_IWICPixelFormatInfo ;
 int IID_IWICPixelFormatInfo2 ;
 scalar_t__ IWICComponentInfo_QueryInterface (int *,int *,void**) ;
 int IWICComponentInfo_Release (int *) ;
 scalar_t__ IWICImagingFactory_CreateComponentInfo (int ,int const*,int **) ;
 scalar_t__ IWICPixelFormatInfo2_GetBitsPerPixel (int *,int *) ;
 scalar_t__ IWICPixelFormatInfo2_GetChannelCount (int *,int *) ;
 int IWICPixelFormatInfo2_Release (int *) ;
 scalar_t__ IWICPixelFormatInfo2_SupportsTransparency (int *,int *) ;
 scalar_t__ S_OK ;
 int factory ;
 int ok (int,char*,scalar_t__,...) ;
 int wine_dbgstr_guid (int const*) ;

__attribute__((used)) static HRESULT get_pixelformat_info(const GUID *format, UINT *bpp, UINT *channels, BOOL *trasparency)
{
    HRESULT hr;
    IWICComponentInfo *info;
    IWICPixelFormatInfo2 *formatinfo;

    hr = IWICImagingFactory_CreateComponentInfo(factory, format, &info);
    ok(hr == S_OK, "CreateComponentInfo(%s) error %#x\n", wine_dbgstr_guid(format), hr);
    if (hr == S_OK)
    {
        hr = IWICComponentInfo_QueryInterface(info, &IID_IWICPixelFormatInfo2, (void **)&formatinfo);
        if (hr == S_OK)
        {
            hr = IWICPixelFormatInfo2_SupportsTransparency(formatinfo, trasparency);
            ok(hr == S_OK, "SupportsTransparency error %#x\n", hr);
            IWICPixelFormatInfo2_Release(formatinfo);
        }
        hr = IWICComponentInfo_QueryInterface(info, &IID_IWICPixelFormatInfo, (void **)&formatinfo);
        if (hr == S_OK)
        {
            hr = IWICPixelFormatInfo2_GetBitsPerPixel(formatinfo, bpp);
            ok(hr == S_OK, "GetBitsPerPixel error %#x\n", hr);
            hr = IWICPixelFormatInfo2_GetChannelCount(formatinfo, channels);
            ok(hr == S_OK, "GetChannelCount error %#x\n", hr);
            IWICPixelFormatInfo2_Release(formatinfo);
        }
        IWICComponentInfo_Release(info);
    }
    return hr;
}
