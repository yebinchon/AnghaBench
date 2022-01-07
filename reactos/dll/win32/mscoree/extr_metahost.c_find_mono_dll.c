
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int LPWSTR ;
typedef int LPCWSTR ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;


 scalar_t__ GetFileAttributesW (int ) ;
 scalar_t__ INVALID_FILE_ATTRIBUTES ;
 char const* libmono2_arch_dll ;
 int strcatW (int ,char const*) ;
 int strcpyW (int ,int ) ;

__attribute__((used)) static BOOL find_mono_dll(LPCWSTR path, LPWSTR dll_path, int abi_version)
{
    static const WCHAR mono_dll[] = {'\\','b','i','n','\\','m','o','n','o','.','d','l','l',0};
    static const WCHAR libmono_dll[] = {'\\','b','i','n','\\','l','i','b','m','o','n','o','.','d','l','l',0};
    static const WCHAR mono2_dll[] = {'\\','b','i','n','\\','m','o','n','o','-','2','.','0','.','d','l','l',0};
    static const WCHAR libmono2_dll[] = {'\\','b','i','n','\\','l','i','b','m','o','n','o','-','2','.','0','.','d','l','l',0};
    DWORD attributes=INVALID_FILE_ATTRIBUTES;

    if (abi_version == 1)
    {
        strcpyW(dll_path, path);
        strcatW(dll_path, mono_dll);
        attributes = GetFileAttributesW(dll_path);

        if (attributes == INVALID_FILE_ATTRIBUTES)
        {
            strcpyW(dll_path, path);
            strcatW(dll_path, libmono_dll);
            attributes = GetFileAttributesW(dll_path);
        }
    }
    else if (abi_version == 2)
    {
        strcpyW(dll_path, path);
        strcatW(dll_path, libmono2_arch_dll);
        attributes = GetFileAttributesW(dll_path);

        if (attributes == INVALID_FILE_ATTRIBUTES)
        {
            strcpyW(dll_path, path);
            strcatW(dll_path, mono2_dll);
            attributes = GetFileAttributesW(dll_path);
        }

        if (attributes == INVALID_FILE_ATTRIBUTES)
        {
            strcpyW(dll_path, path);
            strcatW(dll_path, libmono2_dll);
            attributes = GetFileAttributesW(dll_path);
        }
    }

    return (attributes != INVALID_FILE_ATTRIBUTES);
}
