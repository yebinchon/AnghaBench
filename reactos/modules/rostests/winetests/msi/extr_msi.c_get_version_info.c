
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dwFileVersionLS; int dwFileVersionMS; } ;
typedef TYPE_1__ VS_FIXEDFILEINFO ;
typedef int USHORT ;
typedef void* LPVOID ;
typedef int LPSTR ;
typedef int * LPDWORD ;
typedef int DWORD ;


 int GetFileVersionInfoA (int ,int ,int ,int ) ;
 int GetFileVersionInfoSizeA (int ,int *) ;
 int GetProcessHeap () ;
 int HIWORD (int ) ;
 int HeapAlloc (int ,int ,int ) ;
 int HeapFree (int ,int ,int ) ;
 int LOWORD (int ) ;
 int MAX_PATH ;
 int VerQueryValueA (int ,char*,void**,int *) ;
 int lstrlenA (int ) ;
 int sprintf (int ,char*,int,...) ;

__attribute__((used)) static void get_version_info(LPSTR path, LPSTR *vercheck, LPDWORD verchecksz,
                             LPSTR *langcheck, LPDWORD langchecksz)
{
    LPSTR version;
    VS_FIXEDFILEINFO *ffi;
    DWORD size = GetFileVersionInfoSizeA(path, ((void*)0));
    USHORT *lang;

    version = HeapAlloc(GetProcessHeap(), 0, size);
    GetFileVersionInfoA(path, 0, size, version);

    VerQueryValueA(version, "\\", (LPVOID *)&ffi, &size);
    *vercheck = HeapAlloc(GetProcessHeap(), 0, MAX_PATH);
    sprintf(*vercheck, "%d.%d.%d.%d", HIWORD(ffi->dwFileVersionMS),
            LOWORD(ffi->dwFileVersionMS), HIWORD(ffi->dwFileVersionLS),
            LOWORD(ffi->dwFileVersionLS));
    *verchecksz = lstrlenA(*vercheck);

    VerQueryValueA(version, "\\VarFileInfo\\Translation", (void **)&lang, &size);
    *langcheck = HeapAlloc(GetProcessHeap(), 0, MAX_PATH);
    sprintf(*langcheck, "%d", *lang);
    *langchecksz = lstrlenA(*langcheck);

    HeapFree(GetProcessHeap(), 0, version);
}
