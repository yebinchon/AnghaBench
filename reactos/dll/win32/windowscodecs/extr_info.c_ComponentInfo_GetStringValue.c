
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int UINT ;
typedef int LPCWSTR ;
typedef scalar_t__ LONG ;
typedef int HRESULT ;
typedef int HKEY ;
typedef int DWORD ;


 scalar_t__ ERROR_FILE_NOT_FOUND ;
 scalar_t__ ERROR_MORE_DATA ;
 int E_INVALIDARG ;
 int HRESULT_FROM_WIN32 (scalar_t__) ;
 int RRF_NOEXPAND ;
 int RRF_RT_REG_SZ ;
 scalar_t__ RegGetValueW (int ,int *,int ,int,int *,int *,int*) ;
 int S_OK ;
 int WINCODEC_ERR_INSUFFICIENTBUFFER ;

__attribute__((used)) static HRESULT ComponentInfo_GetStringValue(HKEY classkey, LPCWSTR value,
    UINT buffer_size, WCHAR *buffer, UINT *actual_size)
{
    LONG ret;
    DWORD cbdata=buffer_size * sizeof(WCHAR);

    if (!actual_size)
        return E_INVALIDARG;

    ret = RegGetValueW(classkey, ((void*)0), value, RRF_RT_REG_SZ|RRF_NOEXPAND, ((void*)0),
        buffer, &cbdata);

    if (ret == ERROR_FILE_NOT_FOUND)
    {
        *actual_size = 0;
        return S_OK;
    }

    if (ret == 0 || ret == ERROR_MORE_DATA)
        *actual_size = cbdata/sizeof(WCHAR);

    if (!buffer && buffer_size != 0)

        return E_INVALIDARG;

    if (ret == ERROR_MORE_DATA)
        return WINCODEC_ERR_INSUFFICIENTBUFFER;

    return HRESULT_FROM_WIN32(ret);
}
