
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef size_t UINT ;
typedef int LPCWSTR ;
typedef scalar_t__ LONG ;
typedef int HRESULT ;
typedef int HKEY ;
typedef int GUID ;
typedef int DWORD ;


 int CLSIDFromString (int *,int *) ;
 scalar_t__ ERROR_FILE_NOT_FOUND ;
 scalar_t__ ERROR_NO_MORE_ITEMS ;
 scalar_t__ ERROR_SUCCESS ;
 int E_FAIL ;
 int E_INVALIDARG ;
 scalar_t__ FAILED (int ) ;
 int HRESULT_FROM_WIN32 (scalar_t__) ;
 int KEY_READ ;
 int RegCloseKey (int ) ;
 scalar_t__ RegEnumKeyExW (int ,size_t,int *,int*,int *,int *,int *,int *) ;
 scalar_t__ RegOpenKeyExW (int ,int ,int ,int ,int *) ;
 scalar_t__ RegQueryInfoKeyW (int ,int *,int *,int *,size_t*,int *,int *,int *,int *,int *,int *,int *) ;
 int S_OK ;

__attribute__((used)) static HRESULT ComponentInfo_GetGuidList(HKEY classkey, LPCWSTR subkeyname,
    UINT buffersize, GUID *buffer, UINT *actual_size)
{
    LONG ret;
    HKEY subkey;
    UINT items_returned;
    WCHAR guid_string[39];
    DWORD guid_string_size;
    HRESULT hr=S_OK;

    if (!actual_size)
        return E_INVALIDARG;

    ret = RegOpenKeyExW(classkey, subkeyname, 0, KEY_READ, &subkey);
    if (ret == ERROR_FILE_NOT_FOUND)
    {
        *actual_size = 0;
        return S_OK;
    }
    else if (ret != ERROR_SUCCESS) return HRESULT_FROM_WIN32(ret);

    if (buffer)
    {
        items_returned = 0;
        guid_string_size = 39;
        while (items_returned < buffersize)
        {
            ret = RegEnumKeyExW(subkey, items_returned, guid_string,
                &guid_string_size, ((void*)0), ((void*)0), ((void*)0), ((void*)0));

            if (ret != ERROR_SUCCESS)
            {
                hr = HRESULT_FROM_WIN32(ret);
                break;
            }

            if (guid_string_size != 38)
            {
                hr = E_FAIL;
                break;
            }

            hr = CLSIDFromString(guid_string, &buffer[items_returned]);
            if (FAILED(hr))
                break;

            items_returned++;
            guid_string_size = 39;
        }

        if (ret == ERROR_NO_MORE_ITEMS)
            hr = S_OK;

        *actual_size = items_returned;
    }
    else
    {
        ret = RegQueryInfoKeyW(subkey, ((void*)0), ((void*)0), ((void*)0), actual_size, ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0));
        if (ret != ERROR_SUCCESS)
            hr = HRESULT_FROM_WIN32(ret);
    }

    RegCloseKey(subkey);

    return hr;
}
