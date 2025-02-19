
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HANDLE ;
typedef int DWORD ;
typedef int * BSTR ;


 int CP_ACP ;
 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFileA (char const*,int ,int ,int *,int ,int ,int *) ;
 scalar_t__ CreateFileMappingW (scalar_t__,int *,int ,int ,int ,int *) ;
 int FILE_ATTRIBUTE_READONLY ;
 int FILE_MAP_READ ;
 int GENERIC_READ ;
 int GetFileSize (scalar_t__,int *) ;
 int GetLastError () ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 char* MapViewOfFile (scalar_t__,int ,int ,int ,int ) ;
 int MultiByteToWideChar (int ,int ,char const*,int ,int *,int ) ;
 int OPEN_EXISTING ;
 int PAGE_READONLY ;
 int * SysAllocStringLen (int *,int ) ;
 int UnmapViewOfFile (char const*) ;
 int trace (char*,int ) ;

__attribute__((used)) static BSTR get_script_from_file(const char *filename)
{
    DWORD size, len;
    HANDLE file, map;
    const char *file_map;
    BSTR ret;

    file = CreateFileA(filename, GENERIC_READ, 0, ((void*)0), OPEN_EXISTING, FILE_ATTRIBUTE_READONLY, ((void*)0));
    if(file == INVALID_HANDLE_VALUE) {
        trace("Could not open file: %u\n", GetLastError());
        return ((void*)0);
    }

    size = GetFileSize(file, ((void*)0));

    map = CreateFileMappingW(file, ((void*)0), PAGE_READONLY, 0, 0, ((void*)0));
    CloseHandle(file);
    if(map == INVALID_HANDLE_VALUE) {
        trace("Could not create file mapping: %u\n", GetLastError());
        return ((void*)0);
    }

    file_map = MapViewOfFile(map, FILE_MAP_READ, 0, 0, 0);
    CloseHandle(map);
    if(!file_map) {
        trace("MapViewOfFile failed: %u\n", GetLastError());
        return ((void*)0);
    }

    len = MultiByteToWideChar(CP_ACP, 0, file_map, size, ((void*)0), 0);
    ret = SysAllocStringLen(((void*)0), len);
    MultiByteToWideChar(CP_ACP, 0, file_map, size, ret, len);

    UnmapViewOfFile(file_map);

    return ret;
}
