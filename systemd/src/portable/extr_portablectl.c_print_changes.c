
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_bus_message ;


 int SPECIAL_GLYPH_ARROW ;
 scalar_t__ arg_quiet ;
 int bus_log_parse_error (int) ;
 scalar_t__ isempty (char const*) ;
 int log_error (char*,char const*,char const*,char const*) ;
 int log_info (char*,char const*,...) ;
 int sd_bus_message_enter_container (int *,char,char*) ;
 int sd_bus_message_exit_container (int *) ;
 int sd_bus_message_read (int *,char*,char const**,char const**,char const**) ;
 int special_glyph (int ) ;
 scalar_t__ streq (char const*,char*) ;

__attribute__((used)) static int print_changes(sd_bus_message *m) {
        int r;

        if (arg_quiet)
                return 0;

        r = sd_bus_message_enter_container(m, 'a', "(sss)");
        if (r < 0)
                return bus_log_parse_error(r);

        for (;;) {
                const char *type, *path, *source;

                r = sd_bus_message_read(m, "(sss)", &type, &path, &source);
                if (r < 0)
                        return bus_log_parse_error(r);
                if (r == 0)
                        break;

                if (streq(type, "symlink"))
                        log_info("Created symlink %s %s %s.", path, special_glyph(SPECIAL_GLYPH_ARROW), source);
                else if (streq(type, "copy")) {
                        if (isempty(source))
                                log_info("Copied %s.", path);
                        else
                                log_info("Copied %s %s %s.", source, special_glyph(SPECIAL_GLYPH_ARROW), path);
                } else if (streq(type, "unlink"))
                        log_info("Removed %s.", path);
                else if (streq(type, "write"))
                        log_info("Written %s.", path);
                else if (streq(type, "mkdir"))
                        log_info("Created directory %s.", path);
                else
                        log_error("Unexpected change: %s/%s/%s", type, path, source);
        }

        r = sd_bus_message_exit_container(m);
        if (r < 0)
                return r;

        return 0;
}
