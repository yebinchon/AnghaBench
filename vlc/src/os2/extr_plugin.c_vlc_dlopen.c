
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RTLD_LAZY ;
 int RTLD_NOW ;
 char* ToLocaleDup (char const*) ;
 void* dlopen (char*,int const) ;
 int free (char*) ;
 scalar_t__ unlikely (int ) ;

void *vlc_dlopen(const char *psz_file, bool lazy )
{
    const int flags = lazy ? RTLD_LAZY : RTLD_NOW;
    char *path = ToLocaleDup( psz_file );
    if (unlikely(path == ((void*)0)))
        return ((void*)0);

    void *handle = dlopen( path, flags );
    free( path );
    return handle;
}
