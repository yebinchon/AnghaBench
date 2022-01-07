
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPCWSTR ;
typedef scalar_t__ LONG ;
typedef int HRESULT ;
typedef int HKEY ;
typedef int DWORD ;


 scalar_t__ ERROR_FILE_NOT_FOUND ;
 int E_INVALIDARG ;
 int HRESULT_FROM_WIN32 (scalar_t__) ;
 int RRF_RT_DWORD ;
 scalar_t__ RegGetValueW (int ,int *,int ,int ,int *,int*,int*) ;
 int S_OK ;

__attribute__((used)) static HRESULT ComponentInfo_GetDWORDValue(HKEY classkey, LPCWSTR value,
    DWORD *result)
{
    LONG ret;
    DWORD cbdata = sizeof(DWORD);

    if (!result)
        return E_INVALIDARG;

    ret = RegGetValueW(classkey, ((void*)0), value, RRF_RT_DWORD, ((void*)0),
        result, &cbdata);

    if (ret == ERROR_FILE_NOT_FOUND)
    {
        *result = 0;
        return S_OK;
    }

    return HRESULT_FROM_WIN32(ret);
}
