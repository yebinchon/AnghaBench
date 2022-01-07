
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int INT ;
typedef int DWORD ;



__attribute__((used)) static INT find_file_extension(const WCHAR *path, DWORD path_len) {
    const WCHAR *end;

    for(end = path+path_len-1; end >= path && *end != '/' && *end != '\\'; --end) {
        if(*end == '.')
            return end-path;
    }

    return -1;
}
