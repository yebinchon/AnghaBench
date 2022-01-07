
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int S_IFREG ;
 int fopen_temporary (char const*,int **,char**) ;
 int mac_selinux_create_file_clear () ;
 int mac_selinux_create_file_prepare (char const*,int ) ;

int fopen_temporary_label(
                const char *target,
                const char *path,
                FILE **f,
                char **temp_path) {

        int r;

        r = mac_selinux_create_file_prepare(target, S_IFREG);
        if (r < 0)
                return r;

        r = fopen_temporary(path, f, temp_path);

        mac_selinux_create_file_clear();

        return r;
}
