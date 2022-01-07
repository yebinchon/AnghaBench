
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DL_LAZY ;
 int RTLD_LAZY ;
 int RTLD_NOW ;
 int VLC_UNUSED (int) ;
 void* dlopen (char const*,int const) ;

void *vlc_dlopen(const char *path, bool lazy)
{






    const int flags = 0;
    VLC_UNUSED(lazy);

    return dlopen (path, flags);
}
