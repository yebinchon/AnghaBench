
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dwFileVersionMS; int dwProductVersionMS; } ;
typedef TYPE_1__ VS_FIXEDFILEINFO ;
typedef int UINT ;
typedef int LPVOID ;
typedef scalar_t__ HRSRC ;
typedef int HMODULE ;
typedef int HLOCAL ;
typedef int HGLOBAL ;
typedef int DWORD ;


 int CopyMemory (int ,int ,int) ;
 scalar_t__ FindResource (int ,int ,int ) ;
 int FreeResource (int ) ;
 int HIWORD (int ) ;
 int LMEM_FIXED ;
 int LOWORD (int ) ;
 int LoadResource (int ,scalar_t__) ;
 int LocalAlloc (int ,int) ;
 int LocalFree (int ) ;
 int LockResource (int ) ;
 int MAKEINTRESOURCE (int ) ;
 int RT_VERSION ;
 int SizeofResource (int ,scalar_t__) ;
 int VS_VERSION_INFO ;
 scalar_t__ VerQueryValueW (int ,char*,int *,int *) ;

DWORD get_module_version(HMODULE mod)
{
    DWORD dwVersion = 0;
    HRSRC hResInfo = FindResource(mod, MAKEINTRESOURCE(VS_VERSION_INFO), RT_VERSION);
    DWORD dwSize = SizeofResource(mod, hResInfo);
    if (hResInfo && dwSize)
    {
        VS_FIXEDFILEINFO *lpFfi;
        UINT uLen;

        HGLOBAL hResData = LoadResource(mod, hResInfo);
        LPVOID pRes = LockResource(hResData);
        HLOCAL pResCopy = LocalAlloc(LMEM_FIXED, dwSize);

        CopyMemory(pResCopy, pRes, dwSize);
        FreeResource(hResData);

        if (VerQueryValueW(pResCopy, L"\\", (LPVOID*)&lpFfi, &uLen))
        {
            dwVersion = (HIWORD(lpFfi->dwProductVersionMS) << 8) | LOWORD(lpFfi->dwProductVersionMS);
            if (!dwVersion)
                dwVersion = (HIWORD(lpFfi->dwFileVersionMS) << 8) | LOWORD(lpFfi->dwFileVersionMS);
        }

        LocalFree(pResCopy);
    }

    return dwVersion;
}
