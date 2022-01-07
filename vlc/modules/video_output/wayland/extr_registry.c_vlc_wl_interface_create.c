
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_wl_interface {int globals; int interface; } ;


 scalar_t__ likely (int ) ;
 struct vlc_wl_interface* malloc (int) ;
 int memcpy (int ,char const*,size_t const) ;
 int strlen (char const*) ;
 int wl_list_init (int *) ;

__attribute__((used)) static struct vlc_wl_interface *vlc_wl_interface_create(const char *iface)
{
    const size_t len = strlen(iface) + 1;
    struct vlc_wl_interface *vi = malloc(sizeof (*vi) + len);

    if (likely(vi != ((void*)0)))
    {
        memcpy(vi->interface, iface, len);
        wl_list_init(&vi->globals);
    }
    return vi;
}
