
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEDIUM ;
 int free (char*) ;
 char* get_current_dir_name () ;
 int negative_errno () ;

int safe_getcwd(char **ret) {
        char *cwd;

        cwd = get_current_dir_name();
        if (!cwd)
                return negative_errno();



        if (cwd[0] != '/') {
                free(cwd);
                return -ENOMEDIUM;
        }

        *ret = cwd;
        return 0;
}
