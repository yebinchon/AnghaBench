
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_wl_interface {int interface; } ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int vwicmp(const void *a, const void *b)
{
    const struct vlc_wl_interface *ia = a;
    const struct vlc_wl_interface *ib = b;

    return strcmp(ia->interface, ib->interface);
}
