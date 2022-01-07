
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MIMECSETINFO ;
typedef int IMultiLanguage ;
typedef int HRESULT ;
typedef scalar_t__ DWORD ;
typedef int * BSTR ;


 int CP_ACP ;
 scalar_t__ FAILED (int ) ;
 int IMultiLanguage_GetCharsetInfo (int *,int *,int *) ;
 int IMultiLanguage_Release (int *) ;
 int MIME_E_NOT_FOUND ;
 scalar_t__ MultiByteToWideChar (int ,int ,char const*,int,int *,scalar_t__) ;
 scalar_t__ SUCCEEDED (int ) ;
 int * SysAllocStringLen (int *,scalar_t__) ;
 int SysFreeString (int *) ;
 int get_mlang (int **) ;

__attribute__((used)) static HRESULT mlang_getcsetinfo(const char *charset, MIMECSETINFO *mlang_info)
{
    DWORD len = MultiByteToWideChar(CP_ACP, 0, charset, -1, ((void*)0), 0);
    BSTR bstr = SysAllocStringLen(((void*)0), len - 1);
    HRESULT hr;
    IMultiLanguage *ml;

    MultiByteToWideChar(CP_ACP, 0, charset, -1, bstr, len);

    hr = get_mlang(&ml);

    if(SUCCEEDED(hr))
    {
        hr = IMultiLanguage_GetCharsetInfo(ml, bstr, mlang_info);
        IMultiLanguage_Release(ml);
    }
    SysFreeString(bstr);
    if(FAILED(hr)) hr = MIME_E_NOT_FOUND;
    return hr;
}
