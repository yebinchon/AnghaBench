
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_NOTICE ;
 int free_and_replace (char*,char*) ;
 int log_oom () ;
 int log_syntax (char const*,int ,char const*,unsigned int,int ,char*,char const*,char*,char*) ;
 char* path_join (char*,char const*) ;
 char* path_startswith (char*,char*) ;

__attribute__((used)) static int patch_var_run(
                const char *unit,
                const char *filename,
                unsigned line,
                const char *lvalue,
                char **path) {

        const char *e;
        char *z;

        e = path_startswith(*path, "/var/run/");
        if (!e)
                return 0;

        z = path_join("/run/", e);
        if (!z)
                return log_oom();

        log_syntax(unit, LOG_NOTICE, filename, line, 0,
                   "%s= references a path below legacy directory /var/run/, updating %s → %s; "
                   "please update the unit file accordingly.", lvalue, *path, z);

        free_and_replace(*path, z);

        return 1;
}
