
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int guid_string ;
typedef int WCHAR ;
typedef int LPCWSTR ;
typedef scalar_t__ LONG ;
typedef int HRESULT ;
typedef int HKEY ;
typedef int GUID ;
typedef int DWORD ;


 int CLSIDFromString (int *,int *) ;
 int ERR (char*) ;
 scalar_t__ ERROR_SUCCESS ;
 int E_FAIL ;
 int E_INVALIDARG ;
 int HRESULT_FROM_WIN32 (scalar_t__) ;
 int RRF_NOEXPAND ;
 int RRF_RT_REG_SZ ;
 scalar_t__ RegGetValueW (int ,int *,int ,int,int *,int *,int*) ;

__attribute__((used)) static HRESULT ComponentInfo_GetGUIDValue(HKEY classkey, LPCWSTR value,
    GUID *result)
{
    LONG ret;
    WCHAR guid_string[39];
    DWORD cbdata = sizeof(guid_string);
    HRESULT hr;

    if (!result)
        return E_INVALIDARG;

    ret = RegGetValueW(classkey, ((void*)0), value, RRF_RT_REG_SZ|RRF_NOEXPAND, ((void*)0),
        guid_string, &cbdata);

    if (ret != ERROR_SUCCESS)
        return HRESULT_FROM_WIN32(ret);

    if (cbdata < sizeof(guid_string))
    {
        ERR("incomplete GUID value\n");
        return E_FAIL;
    }

    hr = CLSIDFromString(guid_string, result);

    return hr;
}
