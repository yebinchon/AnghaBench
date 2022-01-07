
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct wl_registry {int dummy; } ;



__attribute__((used)) static void registry_global_remove_cb(void *data, struct wl_registry *registry,
                                      uint32_t name)
{
    (void) data; (void) registry; (void) name;
}
