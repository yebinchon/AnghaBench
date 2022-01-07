
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef char WCHAR ;
struct TYPE_2__ {int mono_abi_version; char const* mono_libdir; char* mono_path; char* mscorlib_path; } ;
typedef int BOOL ;


 int EnterCriticalSection (int *) ;
 int FALSE ;
 scalar_t__ GetFileAttributesW (char*) ;
 scalar_t__ INVALID_FILE_ATTRIBUTES ;
 int LeaveCriticalSection (int *) ;
 int MAX_PATH ;
 int NUM_ABI_VERSIONS ;
 int NUM_RUNTIMES ;
 int TRUE ;
 int get_mono_path (char*,int) ;
 int runtime_list_cs ;
 TYPE_1__* runtimes ;
 int runtimes_initialized ;
 int strcatW (char*,char const*) ;
 int strcpyW (char*,char*) ;

__attribute__((used)) static void find_runtimes(void)
{
    int abi_version, i;
    static const WCHAR libmono[] = {'\\','l','i','b','\\','m','o','n','o','\\',0};
    static const WCHAR mscorlib[] = {'\\','m','s','c','o','r','l','i','b','.','d','l','l',0};
    WCHAR mono_path[MAX_PATH], lib_path[MAX_PATH];
    BOOL any_runtimes_found = FALSE;

    if (runtimes_initialized) return;

    EnterCriticalSection(&runtime_list_cs);

    if (runtimes_initialized) goto end;

    for (abi_version=NUM_ABI_VERSIONS; abi_version>0; abi_version--)
    {
        if (!get_mono_path(mono_path, abi_version))
            continue;

        for (i=0; i<NUM_RUNTIMES; i++)
        {
            if (runtimes[i].mono_abi_version == 0)
            {
                strcpyW(lib_path, mono_path);
                strcatW(lib_path, libmono);
                strcatW(lib_path, runtimes[i].mono_libdir);
                strcatW(lib_path, mscorlib);

                if (GetFileAttributesW(lib_path) != INVALID_FILE_ATTRIBUTES)
                {
                    runtimes[i].mono_abi_version = abi_version;

                    strcpyW(runtimes[i].mono_path, mono_path);
                    strcpyW(runtimes[i].mscorlib_path, lib_path);

                    any_runtimes_found = TRUE;
                }
            }
        }
    }

    if (!any_runtimes_found)
    {


        for (i=0; i<NUM_RUNTIMES; i++)
            runtimes[i].mono_abi_version = -1;
    }

    runtimes_initialized = 1;

end:
    LeaveCriticalSection(&runtime_list_cs);
}
