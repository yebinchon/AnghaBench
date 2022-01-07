
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mime ;
typedef char WCHAR ;
typedef int LPBYTE ;
typedef int HRESULT ;
typedef int HKEY ;
typedef scalar_t__ DWORD ;


 char* CoTaskMemAlloc (scalar_t__) ;
 scalar_t__ ERROR_SUCCESS ;
 int HKEY_CLASSES_ROOT ;
 int HRESULT_FROM_WIN32 (scalar_t__) ;
 int RegCloseKey (int ) ;
 scalar_t__ RegOpenKeyW (int ,char const*,int *) ;
 scalar_t__ RegQueryValueExW (int ,char const*,int *,int *,int ,scalar_t__*) ;
 int S_OK ;
 int TRACE (char*,int ) ;
 int debugstr_w (char*) ;
 int memcpy (char*,char*,scalar_t__) ;

HRESULT find_mime_from_ext(const WCHAR *ext, WCHAR **ret)
{
    DWORD res, size;
    WCHAR mime[64];
    HKEY hkey;

    static const WCHAR content_typeW[] = {'C','o','n','t','e','n','t',' ','T','y','p','e','\0'};

    res = RegOpenKeyW(HKEY_CLASSES_ROOT, ext, &hkey);
    if(res != ERROR_SUCCESS)
        return HRESULT_FROM_WIN32(res);

    size = sizeof(mime);
    res = RegQueryValueExW(hkey, content_typeW, ((void*)0), ((void*)0), (LPBYTE)mime, &size);
    RegCloseKey(hkey);
    if(res != ERROR_SUCCESS)
        return HRESULT_FROM_WIN32(res);

    TRACE("found MIME %s\n", debugstr_w(mime));

    *ret = CoTaskMemAlloc(size);
    memcpy(*ret, mime, size);
    return S_OK;
}
