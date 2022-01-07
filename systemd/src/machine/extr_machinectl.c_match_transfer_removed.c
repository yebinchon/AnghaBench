
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef char const* sd_bus_message ;
typedef int sd_bus_error ;


 int assert (char const**) ;
 int bus_log_parse_error (int) ;
 int sd_bus_get_event (int ) ;
 int sd_bus_message_get_bus (char const**) ;
 int sd_bus_message_read (char const**,char*,int *,char const**,char const**) ;
 int sd_event_exit (int ,int) ;
 int streq_ptr (char const*,char const*) ;

__attribute__((used)) static int match_transfer_removed(sd_bus_message *m, void *userdata, sd_bus_error *error) {
        const char **our_path = userdata, *path, *result;
        uint32_t id;
        int r;

        assert(m);
        assert(our_path);

        r = sd_bus_message_read(m, "uos", &id, &path, &result);
        if (r < 0) {
                bus_log_parse_error(r);
                return 0;
        }

        if (!streq_ptr(*our_path, path))
                return 0;

        sd_event_exit(sd_bus_get_event(sd_bus_message_get_bus(m)), !streq_ptr(result, "done"));
        return 0;
}
