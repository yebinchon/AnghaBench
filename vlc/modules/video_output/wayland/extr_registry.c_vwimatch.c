
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_wl_interface {int interface; } ;


 int strcmp (char const*,int ) ;

__attribute__((used)) static int vwimatch(const void *a, const void *b)
{
    const char *name = a;
    const struct vlc_wl_interface *iface = b;

    return strcmp(name, iface->interface);
}
