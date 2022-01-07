
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int WCHAR ;
typedef int UXINI_FILE ;
struct TYPE_4__ {void* lpEnd; void* lpCurLoc; void* lpIni; } ;
typedef TYPE_1__* PUXINI_FILE ;
typedef void* LPCWSTR ;
typedef int HRSRC ;
typedef int HMODULE ;
typedef int DWORD ;


 int FindResourceW (int ,void*,int ) ;
 int GetProcessHeap () ;
 TYPE_1__* HeapAlloc (int ,int ,int) ;
 void* LoadResource (int ,int ) ;
 int SizeofResource (int ,int ) ;
 int TRACE (char*,int ) ;
 int debugstr_w (void*) ;
 int szTextFileResource ;

PUXINI_FILE UXINI_LoadINI(HMODULE hTheme, LPCWSTR lpName) {
    HRSRC hrsc;
    LPCWSTR lpThemesIni = ((void*)0);
    PUXINI_FILE uf;
    DWORD dwIniSize;

    TRACE("Loading resource INI %s\n", debugstr_w(lpName));

    if((hrsc = FindResourceW(hTheme, lpName, szTextFileResource))) {
        if(!(lpThemesIni = LoadResource(hTheme, hrsc))) {
            TRACE("%s resource not found\n", debugstr_w(lpName));
            return ((void*)0);
        }
    }

    dwIniSize = SizeofResource(hTheme, hrsc) / sizeof(WCHAR);
    uf = HeapAlloc(GetProcessHeap(), 0, sizeof(UXINI_FILE));
    uf->lpIni = lpThemesIni;
    uf->lpCurLoc = lpThemesIni;
    uf->lpEnd = lpThemesIni + dwIniSize;
    return uf;
}
