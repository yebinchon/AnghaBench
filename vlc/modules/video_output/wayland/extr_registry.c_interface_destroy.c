
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int vlc_wl_interface_destroy (void*) ;

__attribute__((used)) static void interface_destroy(void *d)
{
    vlc_wl_interface_destroy(d);
}
