
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bind_to_device; } ;
typedef TYPE_1__ Socket ;


 int LOG_ERR ;
 int assert (void*) ;
 scalar_t__ free_and_strdup (int *,char const*) ;
 int ifname_valid (char const*) ;
 scalar_t__ isempty (char const*) ;
 int log_oom () ;
 int log_syntax (char const*,int ,char const*,unsigned int,int ,char*,char const*) ;
 int mfree (int ) ;
 scalar_t__ streq (char const*,char*) ;

int config_parse_socket_bindtodevice(
                const char* unit,
                const char *filename,
                unsigned line,
                const char *section,
                unsigned section_line,
                const char *lvalue,
                int ltype,
                const char *rvalue,
                void *data,
                void *userdata) {

        Socket *s = data;

        assert(filename);
        assert(lvalue);
        assert(rvalue);
        assert(data);

        if (isempty(rvalue) || streq(rvalue, "*")) {
                s->bind_to_device = mfree(s->bind_to_device);
                return 0;
        }

        if (!ifname_valid(rvalue)) {
                log_syntax(unit, LOG_ERR, filename, line, 0, "Invalid interface name, ignoring: %s", rvalue);
                return 0;
        }

        if (free_and_strdup(&s->bind_to_device, rvalue) < 0)
                return log_oom();

        return 0;
}
