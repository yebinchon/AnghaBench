
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * szKey; } ;
typedef TYPE_1__ VS_VERSIONINFO ;
struct TYPE_5__ {void* dwProductVersionLS; void* dwProductVersionMS; void* dwFileVersionLS; void* dwFileVersionMS; } ;
typedef TYPE_2__ VS_FIXEDFILEINFO ;
typedef int LPCSTR ;
typedef int * LPBYTE ;
typedef void* LONG ;
typedef int HANDLE ;
typedef int DWORD ;
typedef int CHAR ;
typedef int BYTE ;
typedef int BOOL ;


 int BeginUpdateResourceA (int const*,int ) ;
 int CopyFileA (int *,int const*,int ) ;
 int EndUpdateResourceA (int ,int ) ;
 int FALSE ;
 int GetFileVersionInfoA (int *,int ,int ,int *) ;
 int GetFileVersionInfoSizeA (int *,int *) ;
 int GetProcessHeap () ;
 int GetSystemDirectoryA (int *,int) ;
 int * HeapAlloc (int ,int ,int ) ;
 int HeapFree (int ,int ,int *) ;
 int LANG_NEUTRAL ;
 scalar_t__ MAKEINTRESOURCE (int ) ;
 int MAKELANGID (int ,int ) ;
 int MAX_PATH ;
 scalar_t__ RT_VERSION ;
 int SUBLANG_NEUTRAL ;
 int TRUE ;
 int UpdateResourceA (int ,int ,int ,int ,int *,int ) ;
 int VS_VERSION_INFO ;
 int lstrcatA (int *,char*) ;
 int lstrlenW (int *) ;
 scalar_t__ roundpos (TYPE_1__*,int *,int) ;

__attribute__((used)) static BOOL create_file_with_version(const CHAR *name, LONG ms, LONG ls)
{
    VS_VERSIONINFO *pVerInfo;
    VS_FIXEDFILEINFO *pFixedInfo;
    LPBYTE buffer, ofs;
    CHAR path[MAX_PATH];
    DWORD handle, size;
    HANDLE resource;
    BOOL ret = FALSE;

    GetSystemDirectoryA(path, MAX_PATH);

    lstrcatA(path, "\\version.dll");

    CopyFileA(path, name, FALSE);

    size = GetFileVersionInfoSizeA(path, &handle);
    buffer = HeapAlloc(GetProcessHeap(), 0, size);

    GetFileVersionInfoA(path, 0, size, buffer);

    pVerInfo = (VS_VERSIONINFO *)buffer;
    ofs = (BYTE *)&pVerInfo->szKey[lstrlenW(pVerInfo->szKey) + 1];
    pFixedInfo = (VS_FIXEDFILEINFO *)roundpos(pVerInfo, ofs, 4);

    pFixedInfo->dwFileVersionMS = ms;
    pFixedInfo->dwFileVersionLS = ls;
    pFixedInfo->dwProductVersionMS = ms;
    pFixedInfo->dwProductVersionLS = ls;

    resource = BeginUpdateResourceA(name, FALSE);
    if (!resource)
        goto done;

    if (!UpdateResourceA(resource, (LPCSTR)RT_VERSION, (LPCSTR)MAKEINTRESOURCE(VS_VERSION_INFO),
                         MAKELANGID(LANG_NEUTRAL, SUBLANG_NEUTRAL), buffer, size))
        goto done;

    if (!EndUpdateResourceA(resource, FALSE))
        goto done;

    ret = TRUE;

done:
    HeapFree(GetProcessHeap(), 0, buffer);
    return ret;
}
