
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int n_custom_mounts; int custom_mounts; } ;
typedef TYPE_1__ Settings ;


 int LOG_ERR ;
 int assert (char const*) ;
 int inaccessible_mount_parse (int *,int *,char const*) ;
 int log_syntax (char const*,int ,char const*,unsigned int,int,char*,char const*) ;

int config_parse_inaccessible(
                const char *unit,
                const char *filename,
                unsigned line,
                const char *section,
                unsigned section_line,
                const char *lvalue,
                int ltype,
                const char *rvalue,
                void *data,
                void *userdata) {

        Settings *settings = data;
        int r;

        assert(filename);
        assert(lvalue);
        assert(rvalue);

        r = inaccessible_mount_parse(&settings->custom_mounts, &settings->n_custom_mounts, rvalue);
        if (r < 0) {
                log_syntax(unit, LOG_ERR, filename, line, r, "Invalid inaccessible file system specification %s: %m", rvalue);
                return 0;
        }

        return 0;
}
