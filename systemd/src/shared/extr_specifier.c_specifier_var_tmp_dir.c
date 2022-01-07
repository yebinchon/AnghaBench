
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 char* strdup (char const*) ;
 int var_tmp_dir (char const**) ;

int specifier_var_tmp_dir(char specifier, const void *data, const void *userdata, char **ret) {
        const char *p;
        char *copy;
        int r;

        r = var_tmp_dir(&p);
        if (r < 0)
                return r;

        copy = strdup(p);
        if (!copy)
                return -ENOMEM;

        *ret = copy;
        return 0;
}
