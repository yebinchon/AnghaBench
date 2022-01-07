
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ usec_t ;
typedef int uint64_t ;
typedef int sd_bus_message ;
typedef int pam_handle_t ;


 int LOG_ERR ;
 int LOG_WARNING ;
 scalar_t__ isempty (char const*) ;
 int pam_syslog (int *,int ,char*,char const*) ;
 int parse_sec (char const*,scalar_t__*) ;
 int sd_bus_message_append (int *,char*,char*,char*,int ) ;
 scalar_t__ streq (char const*,char*) ;
 char const* strerror_safe (int) ;

__attribute__((used)) static int append_session_runtime_max_sec(pam_handle_t *handle, sd_bus_message *m, const char *limit) {
        usec_t val;
        int r;


        if (isempty(limit) || streq(limit, "infinity"))
                return 0;

        r = parse_sec(limit, &val);
        if (r >= 0) {
                r = sd_bus_message_append(m, "(sv)", "RuntimeMaxUSec", "t", (uint64_t) val);
                if (r < 0) {
                        pam_syslog(handle, LOG_ERR, "Failed to append to bus message: %s", strerror_safe(r));
                        return r;
                }
        } else
                pam_syslog(handle, LOG_WARNING, "Failed to parse systemd.runtime_max_sec: %s, ignoring.", limit);

        return 0;
}
