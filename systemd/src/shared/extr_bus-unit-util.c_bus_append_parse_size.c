
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int sd_bus_message ;


 int bus_log_create_error (int) ;
 int log_error_errno (int,char*,char const*,char const*) ;
 int parse_size (char const*,int ,int *) ;
 int sd_bus_message_append (int *,char*,char const*,char*,int ) ;

__attribute__((used)) static int bus_append_parse_size(sd_bus_message *m, const char *field, const char *eq, uint64_t base) {
        uint64_t v;
        int r;

        r = parse_size(eq, base, &v);
        if (r < 0)
                return log_error_errno(r, "Failed to parse %s=%s: %m", field, eq);

        r = sd_bus_message_append(m, "(sv)", field, "t", v);
        if (r < 0)
                return bus_log_create_error(r);

        return 1;
}
