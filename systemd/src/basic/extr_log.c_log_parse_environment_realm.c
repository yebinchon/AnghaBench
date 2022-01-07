
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LogRealm ;


 int PROC_CMDLINE_STRIP_RD_PREFIX ;
 scalar_t__ get_ctty_devnr (int ,int *) ;
 char* getenv (char*) ;
 int getpid_cached () ;
 scalar_t__ log_set_max_level_from_string_realm (int ,char const*) ;
 scalar_t__ log_set_target_from_string (char const*) ;
 scalar_t__ log_show_color_from_string (char const*) ;
 scalar_t__ log_show_location_from_string (char const*) ;
 int log_warning (char*,char const*) ;
 int parse_proc_cmdline_item ;
 int proc_cmdline_parse (int ,int *,int ) ;

void log_parse_environment_realm(LogRealm realm) {


        const char *e;

        if (getpid_cached() == 1 || get_ctty_devnr(0, ((void*)0)) < 0)



                (void) proc_cmdline_parse(parse_proc_cmdline_item, ((void*)0), PROC_CMDLINE_STRIP_RD_PREFIX);

        e = getenv("SYSTEMD_LOG_TARGET");
        if (e && log_set_target_from_string(e) < 0)
                log_warning("Failed to parse log target '%s'. Ignoring.", e);

        e = getenv("SYSTEMD_LOG_LEVEL");
        if (e && log_set_max_level_from_string_realm(realm, e) < 0)
                log_warning("Failed to parse log level '%s'. Ignoring.", e);

        e = getenv("SYSTEMD_LOG_COLOR");
        if (e && log_show_color_from_string(e) < 0)
                log_warning("Failed to parse log color '%s'. Ignoring.", e);

        e = getenv("SYSTEMD_LOG_LOCATION");
        if (e && log_show_location_from_string(e) < 0)
                log_warning("Failed to parse log location '%s'. Ignoring.", e);
}
