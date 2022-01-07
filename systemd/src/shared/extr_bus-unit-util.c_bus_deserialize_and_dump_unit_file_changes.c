
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_bus_message ;
typedef scalar_t__ UnitFileChangeType ;
typedef int UnitFileChange ;


 int SD_BUS_TYPE_ARRAY ;
 int assert (size_t*) ;
 int bus_log_parse_error (int) ;
 int log_notice (char*,char const*,char const*) ;
 int sd_bus_message_enter_container (int *,int ,char*) ;
 int sd_bus_message_exit_container (int *) ;
 int sd_bus_message_read (int *,char*,char const**,char const**,char const**) ;
 scalar_t__ unit_file_change_type_from_string (char const*) ;
 int unit_file_changes_add (int **,size_t*,scalar_t__,char const*,char const*) ;
 int unit_file_dump_changes (int ,int *,int *,size_t,int) ;

int bus_deserialize_and_dump_unit_file_changes(sd_bus_message *m, bool quiet, UnitFileChange **changes, size_t *n_changes) {
        const char *type, *path, *source;
        int r;



        assert(changes);
        assert(n_changes);

        r = sd_bus_message_enter_container(m, SD_BUS_TYPE_ARRAY, "(sss)");
        if (r < 0)
                return bus_log_parse_error(r);

        while ((r = sd_bus_message_read(m, "(sss)", &type, &path, &source)) > 0) {


                UnitFileChangeType ch = unit_file_change_type_from_string(type);

                if (ch < 0) {
                        log_notice("Manager reported unknown change type \"%s\" for path \"%s\", ignoring.", type, path);
                        continue;
                }

                r = unit_file_changes_add(changes, n_changes, ch, path, source);
                if (r < 0)
                        return r;
        }
        if (r < 0)
                return bus_log_parse_error(r);

        r = sd_bus_message_exit_container(m);
        if (r < 0)
                return bus_log_parse_error(r);

        unit_file_dump_changes(0, ((void*)0), *changes, *n_changes, quiet);
        return 0;
}
