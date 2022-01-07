
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int vlc_wl_global_remove (void*) ;

__attribute__((used)) static void name_destroy(void *d)
{
    vlc_wl_global_remove(d);
}
