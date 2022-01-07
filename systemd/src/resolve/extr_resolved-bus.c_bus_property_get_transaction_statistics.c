
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_6__ {scalar_t__ n_transactions_total; int dns_transactions; } ;
typedef TYPE_1__ sd_bus_message ;
typedef int sd_bus_error ;
typedef int sd_bus ;
typedef TYPE_1__ Manager ;


 int assert (TYPE_1__*) ;
 scalar_t__ hashmap_size (int ) ;
 int sd_bus_message_append (TYPE_1__*,char*,int ,int ) ;

__attribute__((used)) static int bus_property_get_transaction_statistics(
                sd_bus *bus,
                const char *path,
                const char *interface,
                const char *property,
                sd_bus_message *reply,
                void *userdata,
                sd_bus_error *error) {

        Manager *m = userdata;

        assert(reply);
        assert(m);

        return sd_bus_message_append(reply, "(tt)",
                                     (uint64_t) hashmap_size(m->dns_transactions),
                                     (uint64_t) m->n_transactions_total);
}
