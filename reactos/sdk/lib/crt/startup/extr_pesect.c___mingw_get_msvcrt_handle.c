
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HMODULE ;
typedef int HANDLE ;


 int GetModuleHandleA (char const*) ;
 int LoadLibraryW (char*) ;
 char* __mingw_enum_import_library_names (int ) ;

HMODULE __mingw_get_msvcrt_handle(void)
{
    static HANDLE msvcrt_handle;

    if(!msvcrt_handle) {
        const char *lib_name;
        int i = 0;

        while ((lib_name = __mingw_enum_import_library_names (i++))) {
            if((lib_name[0] == 'm' || lib_name[0] == 'M')
               && (lib_name[1] == 's' || lib_name[1] == 'S')
               && (lib_name[2] == 'v' || lib_name[2] == 'V')
               && (lib_name[3] == 'c' || lib_name[3] == 'C')
               && (lib_name[4] == 'r' || lib_name[4] == 'R')
               && (lib_name[5] == 't' || lib_name[5] == 'T' || ('0' <= lib_name[5] && lib_name[5] <= '9')))
                break;
        }

       if(lib_name)
            msvcrt_handle = GetModuleHandleA(lib_name);
        if(!msvcrt_handle)
            msvcrt_handle = LoadLibraryW(L"msvcrt.dll");
    }

    return msvcrt_handle;
}
