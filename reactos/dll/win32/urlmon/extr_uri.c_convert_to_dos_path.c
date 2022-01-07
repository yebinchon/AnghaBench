
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int DWORD ;


 scalar_t__ is_drive_path (char const*) ;

__attribute__((used)) static void convert_to_dos_path(const WCHAR *path, DWORD path_len,
                                WCHAR *output, DWORD *output_len)
{
    const WCHAR *ptr = path;

    if(path_len > 3 && *ptr == '/' && is_drive_path(path+1))

        ++ptr;

    for(; ptr < path+path_len; ++ptr) {
        if(*ptr == '/') {
            if(output)
                *output++ = '\\';
            (*output_len)++;
        } else {
            if(output)
                *output++ = *ptr;
            (*output_len)++;
        }
    }
}
