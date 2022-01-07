
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_6__ {scalar_t__* n_dnssec_verdict; } ;
typedef TYPE_1__ sd_bus_message ;
typedef int sd_bus_error ;
typedef int sd_bus ;
typedef TYPE_1__ Manager ;


 size_t DNSSEC_BOGUS ;
 size_t DNSSEC_INDETERMINATE ;
 size_t DNSSEC_INSECURE ;
 size_t DNSSEC_SECURE ;
 int assert (TYPE_1__*) ;
 int sd_bus_message_append (TYPE_1__*,char*,int ,int ,int ,int ) ;

__attribute__((used)) static int bus_property_get_dnssec_statistics(
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

        return sd_bus_message_append(reply, "(tttt)",
                                     (uint64_t) m->n_dnssec_verdict[DNSSEC_SECURE],
                                     (uint64_t) m->n_dnssec_verdict[DNSSEC_INSECURE],
                                     (uint64_t) m->n_dnssec_verdict[DNSSEC_BOGUS],
                                     (uint64_t) m->n_dnssec_verdict[DNSSEC_INDETERMINATE]);
}
