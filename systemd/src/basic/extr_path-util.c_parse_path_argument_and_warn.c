
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ empty_or_root (char*) ;
 int free_and_replace (char*,char*) ;
 scalar_t__ isempty (char const*) ;
 int log_error_errno (int,char*,char const*) ;
 char* mfree (char*) ;
 int path_make_absolute_cwd (char const*,char**) ;
 int path_simplify (char*,int) ;

int parse_path_argument_and_warn(const char *path, bool suppress_root, char **arg) {
        char *p;
        int r;
        if (isempty(path)) {
                *arg = mfree(*arg);
                return 0;
        }

        r = path_make_absolute_cwd(path, &p);
        if (r < 0)
                return log_error_errno(r, "Failed to parse path \"%s\" and make it absolute: %m", path);

        path_simplify(p, 0);
        if (suppress_root && empty_or_root(p))
                p = mfree(p);

        free_and_replace(*arg, p);

        return 0;
}
