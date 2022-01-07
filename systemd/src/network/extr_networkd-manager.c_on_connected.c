
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ links_requesting_uuid; scalar_t__ dynamic_timezone; scalar_t__ dynamic_hostname; } ;
typedef TYPE_1__ sd_bus_message ;
typedef int sd_bus_error ;
typedef TYPE_1__ Manager ;


 int assert (TYPE_1__*) ;
 int manager_request_product_uuid (TYPE_1__*,int *) ;
 int manager_set_hostname (TYPE_1__*,scalar_t__) ;
 int manager_set_timezone (TYPE_1__*,scalar_t__) ;

__attribute__((used)) static int on_connected(sd_bus_message *message, void *userdata, sd_bus_error *ret_error) {
        Manager *m = userdata;

        assert(message);
        assert(m);


        if (m->dynamic_hostname)
                (void) manager_set_hostname(m, m->dynamic_hostname);
        if (m->dynamic_timezone)
                (void) manager_set_timezone(m, m->dynamic_timezone);
        if (m->links_requesting_uuid)
                (void) manager_request_product_uuid(m, ((void*)0));

        return 0;
}
