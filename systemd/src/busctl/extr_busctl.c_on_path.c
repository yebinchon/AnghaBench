
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Set ;


 int assert (int *) ;
 int log_oom () ;
 int set_put_strdup (int *,char const*) ;

__attribute__((used)) static int on_path(const char *path, void *userdata) {
        Set *paths = userdata;
        int r;

        assert(paths);

        r = set_put_strdup(paths, path);
        if (r < 0)
                return log_oom();

        return 0;
}
