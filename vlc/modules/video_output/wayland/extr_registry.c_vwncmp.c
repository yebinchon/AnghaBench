
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_wl_global {scalar_t__ name; } ;



__attribute__((used)) static int vwncmp(const void *a, const void *b)
{
    const struct vlc_wl_global *ga = a;
    const struct vlc_wl_global *gb = b;

    return (ga->name < gb->name) ? -1 : (ga->name > gb->name);
}
