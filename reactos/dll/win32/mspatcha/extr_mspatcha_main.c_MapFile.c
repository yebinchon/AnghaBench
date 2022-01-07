
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * PVOID ;
typedef int * PBYTE ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;


 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFileMappingW (scalar_t__,int *,int ,int ,int ,int *) ;
 int FILE_MAP_READ ;
 int GetFileSize (scalar_t__,int *) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int * MapViewOfFile (scalar_t__,int ,int ,int ,int ) ;
 int PAGE_READONLY ;

__attribute__((used)) static PBYTE MapFile(HANDLE hFile, DWORD* dwSize)
{
    HANDLE hMap;
    PVOID pView;

    *dwSize = GetFileSize(hFile, ((void*)0));
    hMap = CreateFileMappingW(hFile, ((void*)0), PAGE_READONLY, 0, 0, ((void*)0));
    if (hMap != INVALID_HANDLE_VALUE)
    {
        pView = MapViewOfFile(hMap, FILE_MAP_READ, 0, 0, 0);
        CloseHandle(hMap);
        return pView;
    }

    return ((void*)0);
}
