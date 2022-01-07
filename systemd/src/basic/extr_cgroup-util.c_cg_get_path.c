
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int ENOMEM ;
 int assert (char**) ;
 int cg_all_unified () ;
 int cg_controller_is_valid (char const*) ;
 int join_path_legacy (char const*,char const*,char const*,char**) ;
 int join_path_unified (char const*,char const*,char**) ;
 char* path_join (char const*,char const*) ;
 char* path_simplify (char*,int) ;
 char* strdup (char const*) ;

int cg_get_path(const char *controller, const char *path, const char *suffix, char **fs) {
        int r;

        assert(fs);

        if (!controller) {
                char *t;




                if (!path && !suffix)
                        return -EINVAL;

                if (!suffix)
                        t = strdup(path);
                else if (!path)
                        t = strdup(suffix);
                else
                        t = path_join(path, suffix);
                if (!t)
                        return -ENOMEM;

                *fs = path_simplify(t, 0);
                return 0;
        }

        if (!cg_controller_is_valid(controller))
                return -EINVAL;

        r = cg_all_unified();
        if (r < 0)
                return r;
        if (r > 0)
                r = join_path_unified(path, suffix, fs);
        else
                r = join_path_legacy(controller, path, suffix, fs);
        if (r < 0)
                return r;

        path_simplify(*fs, 0);
        return 0;
}
