
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct bus_properties_map {int offset; int (* set ) (int ,char const*,struct bus_properties_map const*,int *,void*) ;scalar_t__ member; } ;
typedef struct bus_properties_map const sd_bus_message ;
typedef int sd_bus_error ;


 int SD_BUS_TYPE_ARRAY ;
 int SD_BUS_TYPE_DICT_ENTRY ;
 int SD_BUS_TYPE_STRING ;
 int SD_BUS_TYPE_VARIANT ;
 int assert (struct bus_properties_map const*) ;
 int map_basic (int ,char const*,struct bus_properties_map const*,unsigned int,int *,void*) ;
 int sd_bus_message_enter_container (struct bus_properties_map const*,int ,char const*) ;
 int sd_bus_message_exit_container (struct bus_properties_map const*) ;
 int sd_bus_message_get_bus (struct bus_properties_map const*) ;
 int sd_bus_message_peek_type (struct bus_properties_map const*,int *,char const**) ;
 int sd_bus_message_read_basic (struct bus_properties_map const*,int ,char const**) ;
 int sd_bus_message_skip (struct bus_properties_map const*,char*) ;
 scalar_t__ streq (scalar_t__,char const*) ;
 int stub1 (int ,char const*,struct bus_properties_map const*,int *,void*) ;

int bus_message_map_all_properties(
                sd_bus_message *m,
                const struct bus_properties_map *map,
                unsigned flags,
                sd_bus_error *error,
                void *userdata) {

        int r;

        assert(m);
        assert(map);

        r = sd_bus_message_enter_container(m, SD_BUS_TYPE_ARRAY, "{sv}");
        if (r < 0)
                return r;

        while ((r = sd_bus_message_enter_container(m, SD_BUS_TYPE_DICT_ENTRY, "sv")) > 0) {
                const struct bus_properties_map *prop;
                const char *member;
                const char *contents;
                void *v;
                unsigned i;

                r = sd_bus_message_read_basic(m, SD_BUS_TYPE_STRING, &member);
                if (r < 0)
                        return r;

                for (i = 0, prop = ((void*)0); map[i].member; i++)
                        if (streq(map[i].member, member)) {
                                prop = &map[i];
                                break;
                        }

                if (prop) {
                        r = sd_bus_message_peek_type(m, ((void*)0), &contents);
                        if (r < 0)
                                return r;

                        r = sd_bus_message_enter_container(m, SD_BUS_TYPE_VARIANT, contents);
                        if (r < 0)
                                return r;

                        v = (uint8_t *)userdata + prop->offset;
                        if (map[i].set)
                                r = prop->set(sd_bus_message_get_bus(m), member, m, error, v);
                        else
                                r = map_basic(sd_bus_message_get_bus(m), member, m, flags, error, v);
                        if (r < 0)
                                return r;

                        r = sd_bus_message_exit_container(m);
                        if (r < 0)
                                return r;
                } else {
                        r = sd_bus_message_skip(m, "v");
                        if (r < 0)
                                return r;
                }

                r = sd_bus_message_exit_container(m);
                if (r < 0)
                        return r;
        }
        if (r < 0)
                return r;

        return sd_bus_message_exit_container(m);
}
