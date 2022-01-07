
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_bus_message ;
typedef int sd_bus_error ;
typedef int sd_bus ;
typedef int Unit ;
typedef unsigned int ExecDirectoryType ;
typedef int ExecCleanMask ;


 int FLAGS_SET (int ,unsigned int) ;
 unsigned int _EXEC_DIRECTORY_TYPE_MAX ;
 int assert (int *) ;
 int exec_resource_type_to_string (unsigned int) ;
 int sd_bus_message_append (int *,char*,int ) ;
 int sd_bus_message_close_container (int *) ;
 int sd_bus_message_open_container (int *,char,char*) ;
 int unit_can_clean (int *,int *) ;

__attribute__((used)) static int property_get_can_clean(
                sd_bus *bus,
                const char *path,
                const char *interface,
                const char *property,
                sd_bus_message *reply,
                void *userdata,
                sd_bus_error *error) {

        Unit *u = userdata;
        ExecCleanMask mask;
        int r;

        assert(bus);
        assert(reply);

        r = unit_can_clean(u, &mask);
        if (r < 0)
                return r;

        r = sd_bus_message_open_container(reply, 'a', "s");
        if (r < 0)
                return r;

        for (ExecDirectoryType t = 0; t < _EXEC_DIRECTORY_TYPE_MAX; t++) {
                if (!FLAGS_SET(mask, 1U << t))
                        continue;

                r = sd_bus_message_append(reply, "s", exec_resource_type_to_string(t));
                if (r < 0)
                        return r;
        }

        return sd_bus_message_close_container(reply);
}
