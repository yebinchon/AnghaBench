
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;
typedef int BOOL ;


 scalar_t__ CreateFileMappingW (scalar_t__,int *,int ,int ,int ,char*) ;
 int FALSE ;
 int FILE_MAP_WRITE ;
 int MAX_PATH ;
 scalar_t__ OpenFileMappingW (int ,int ,char*) ;
 int PAGE_READWRITE ;
 int TRUE ;
 int cache_container_create_object_name (char*,char) ;
 int wsprintfW (char*,char const*,char const*,int ) ;

__attribute__((used)) static HANDLE cache_container_map_index(HANDLE file, const WCHAR *path, DWORD size, BOOL *validate)
{
    static const WCHAR mapping_name_format[]
        = {'%','s','i','n','d','e','x','.','d','a','t','_','%','l','u',0};
    WCHAR mapping_name[MAX_PATH];
    HANDLE mapping;

    wsprintfW(mapping_name, mapping_name_format, path, size);
    cache_container_create_object_name(mapping_name, '_');

    mapping = OpenFileMappingW(FILE_MAP_WRITE, FALSE, mapping_name);
    if(mapping) {
        if(validate) *validate = FALSE;
        return mapping;
    }

    if(validate) *validate = TRUE;
    return CreateFileMappingW(file, ((void*)0), PAGE_READWRITE, 0, 0, mapping_name);
}
