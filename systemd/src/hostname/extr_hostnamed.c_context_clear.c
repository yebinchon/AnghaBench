
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int polkit_registry; } ;
typedef TYPE_1__ Context ;


 int assert (TYPE_1__*) ;
 int bus_verify_polkit_async_registry_free (int ) ;
 int context_reset (TYPE_1__*) ;

__attribute__((used)) static void context_clear(Context *c) {
        assert(c);

        context_reset(c);
        bus_verify_polkit_async_registry_free(c->polkit_registry);
}
