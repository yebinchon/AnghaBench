
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int numa_policy; } ;
typedef TYPE_1__ sd_bus_message ;
typedef int sd_bus_error ;
typedef TYPE_1__ sd_bus ;
typedef int int32_t ;
typedef TYPE_1__ ExecContext ;


 int assert (TYPE_1__*) ;
 int numa_policy_get_type (int *) ;
 int sd_bus_message_append_basic (TYPE_1__*,char,int *) ;

__attribute__((used)) static int property_get_numa_policy(
                sd_bus *bus,
                const char *path,
                const char *interface,
                const char *property,
                sd_bus_message *reply,
                void *userdata,
                sd_bus_error *error) {
        ExecContext *c = userdata;
        int32_t policy;

        assert(bus);
        assert(reply);
        assert(c);

        policy = numa_policy_get_type(&c->numa_policy);

        return sd_bus_message_append_basic(reply, 'i', &policy);
}
