
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bus_match_component {scalar_t__ type; int value_str; } ;
typedef enum bus_match_scope { ____Placeholder_bus_match_scope } bus_match_scope ;


 int BUS_MATCH_DRIVER ;
 int BUS_MATCH_GENERIC ;
 scalar_t__ BUS_MATCH_INTERFACE ;
 int BUS_MATCH_LOCAL ;
 scalar_t__ BUS_MATCH_PATH ;
 scalar_t__ BUS_MATCH_SENDER ;
 int assert (struct bus_match_component const*) ;
 scalar_t__ streq_ptr (int ,char*) ;

enum bus_match_scope bus_match_get_scope(const struct bus_match_component *components, unsigned n_components) {
        bool found_driver = 0;
        unsigned i;

        if (n_components <= 0)
                return BUS_MATCH_GENERIC;

        assert(components);







        for (i = 0; i < n_components; i++) {
                const struct bus_match_component *c = components + i;

                if (c->type == BUS_MATCH_SENDER) {
                        if (streq_ptr(c->value_str, "org.freedesktop.DBus.Local"))
                                return BUS_MATCH_LOCAL;

                        if (streq_ptr(c->value_str, "org.freedesktop.DBus"))
                                found_driver = 1;
                }

                if (c->type == BUS_MATCH_INTERFACE && streq_ptr(c->value_str, "org.freedesktop.DBus.Local"))
                        return BUS_MATCH_LOCAL;

                if (c->type == BUS_MATCH_PATH && streq_ptr(c->value_str, "/org/freedesktop/DBus/Local"))
                        return BUS_MATCH_LOCAL;
        }

        return found_driver ? BUS_MATCH_DRIVER : BUS_MATCH_GENERIC;

}
