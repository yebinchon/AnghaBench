
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ WICComponentType ;
typedef int IWICComponentInfo ;
typedef int HRESULT ;
typedef int GUID ;
typedef int BOOL ;


 scalar_t__ FAILED (int ) ;
 int FALSE ;
 int IWICComponentInfo_GetComponentType (int *,scalar_t__*) ;
 int IWICComponentInfo_Release (int *) ;
 scalar_t__ SUCCEEDED (int ) ;
 scalar_t__ WICPixelFormat ;
 int get_component_info (int *,int **) ;

__attribute__((used)) static BOOL is_pixelformat(GUID *format)
{
    IWICComponentInfo *info;
    HRESULT hr;
    WICComponentType componenttype;

    hr = get_component_info(format, &info);
    if (FAILED(hr))
        return FALSE;

    hr = IWICComponentInfo_GetComponentType(info, &componenttype);

    IWICComponentInfo_Release(info);

    return SUCCEEDED(hr) && componenttype == WICPixelFormat;
}
