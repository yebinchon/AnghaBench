
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int sd_bus_message ;
typedef int pam_handle_t ;


 int LOG_ERR ;
 int LOG_WARNING ;
 int cg_weight_parse (char const*,int *) ;
 scalar_t__ isempty (char const*) ;
 int pam_syslog (int *,int ,char*,char const*) ;
 int sd_bus_message_append (int *,char*,char const*,char*,int ) ;
 scalar_t__ streq (char const*,char*) ;
 char const* strerror_safe (int) ;

__attribute__((used)) static int append_session_cg_weight(pam_handle_t *handle, sd_bus_message *m, const char *limit, const char *field) {
        uint64_t val;
        int r;

        if (isempty(limit))
                return 0;

        r = cg_weight_parse(limit, &val);
        if (r >= 0) {
                r = sd_bus_message_append(m, "(sv)", field, "t", val);
                if (r < 0) {
                        pam_syslog(handle, LOG_ERR, "Failed to append to bus message: %s", strerror_safe(r));
                        return r;
                }
        } else if (streq(field, "CPUWeight"))
                pam_syslog(handle, LOG_WARNING, "Failed to parse systemd.cpu_weight: %s, ignoring.", limit);
        else
                pam_syslog(handle, LOG_WARNING, "Failed to parse systemd.io_weight: %s, ignoring.", limit);

        return 0;
}
