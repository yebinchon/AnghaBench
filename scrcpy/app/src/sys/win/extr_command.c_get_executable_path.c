
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int HMODULE ;


 int GetModuleFileNameW (int ,char*,int ) ;
 int GetModuleHandleW (int *) ;
 int MAX_PATH ;
 char* utf8_from_wide_char (char*) ;

char *
get_executable_path(void) {
    HMODULE hModule = GetModuleHandleW(((void*)0));
    if (!hModule) {
        return ((void*)0);
    }
    WCHAR buf[MAX_PATH + 1];
    int len = GetModuleFileNameW(hModule, buf, MAX_PATH);
    if (!len) {
        return ((void*)0);
    }
    buf[len] = '\0';
    return utf8_from_wide_char(buf);
}
