
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int load_env_file_push ;
 int parse_env_file_internal (int *,char const*,int ,char***,int *) ;
 int strv_free (char**) ;

int load_env_file(FILE *f, const char *fname, char ***rl) {
        char **m = ((void*)0);
        int r;

        r = parse_env_file_internal(f, fname, load_env_file_push, &m, ((void*)0));
        if (r < 0) {
                strv_free(m);
                return r;
        }

        *rl = m;
        return 0;
}
