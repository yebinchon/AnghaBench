
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HANDLE ;
typedef int DWORD ;


 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFileA (char const*,int ,int ,int *,int ,int ,int *) ;
 scalar_t__ CreateFileMappingA (scalar_t__,int *,int ,int ,int ,int *) ;
 int FILE_ATTRIBUTE_READONLY ;
 int FILE_MAP_READ ;
 int GENERIC_READ ;
 int GetFileSize (scalar_t__,int *) ;
 int GetLastError () ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 char* MapViewOfFile (scalar_t__,int ,int ,int ,int ) ;
 int OPEN_EXISTING ;
 int PAGE_READONLY ;
 int ok (int,char*,char const*,...) ;

__attribute__((used)) static DWORD map_file(const char *file_name, const char **ret)
{
    HANDLE file, map;
    DWORD size;

    file = CreateFileA(file_name, GENERIC_READ, 0, ((void*)0), OPEN_EXISTING, FILE_ATTRIBUTE_READONLY, ((void*)0));
    ok(file != INVALID_HANDLE_VALUE, "CreateFile failed: %08x\n", GetLastError());
    if(file == INVALID_HANDLE_VALUE)
        return 0;

    size = GetFileSize(file, ((void*)0));

    map = CreateFileMappingA(file, ((void*)0), PAGE_READONLY, 0, 0, ((void*)0));
    CloseHandle(file);
    ok(map != ((void*)0), "CreateFileMappingA(%s) failed: %u\n", file_name, GetLastError());
    if(!map)
        return 0;

    *ret = MapViewOfFile(map, FILE_MAP_READ, 0, 0, 0);
    ok(*ret != ((void*)0), "MapViewOfFile failed: %u\n", GetLastError());
    CloseHandle(map);
    if(!*ret)
        return 0;

    return size;
}
