
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int polkit_registry; int vc_cache; int x11_cache; int locale_cache; } ;
typedef TYPE_1__ Context ;


 int bus_verify_polkit_async_registry_free (int ) ;
 int context_free_locale (TYPE_1__*) ;
 int context_free_vconsole (TYPE_1__*) ;
 int context_free_x11 (TYPE_1__*) ;
 int sd_bus_message_unref (int ) ;

void context_clear(Context *c) {
        context_free_locale(c);
        context_free_x11(c);
        context_free_vconsole(c);

        sd_bus_message_unref(c->locale_cache);
        sd_bus_message_unref(c->x11_cache);
        sd_bus_message_unref(c->vc_cache);

        bus_verify_polkit_async_registry_free(c->polkit_registry);
}
