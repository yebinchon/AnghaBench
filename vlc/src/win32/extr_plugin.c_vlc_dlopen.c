
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef void* HMODULE ;
typedef int DWORD ;


 int LOAD_LIBRARY_SEARCH_SYSTEM32 ;
 void* LoadLibraryExW (int *,int *,int ) ;
 void* LoadPackagedLibrary (int *,int ) ;
 int SEM_FAILCRITICALERRORS ;
 scalar_t__ SetThreadErrorMode (int ,int *) ;
 int * ToWide (char const*) ;
 int free (int *) ;

void *vlc_dlopen(const char *psz_file, bool lazy)
{
    wchar_t *wfile = ToWide (psz_file);
    if (wfile == ((void*)0))
        return ((void*)0);

    HMODULE handle = ((void*)0);

    DWORD mode;
    if (SetThreadErrorMode (SEM_FAILCRITICALERRORS, &mode) != 0)
    {
        handle = LoadLibraryExW(wfile, ((void*)0), LOAD_LIBRARY_SEARCH_SYSTEM32);
        SetThreadErrorMode (mode, ((void*)0));
    }



    free (wfile);

    (void) lazy;
    return handle;
}
