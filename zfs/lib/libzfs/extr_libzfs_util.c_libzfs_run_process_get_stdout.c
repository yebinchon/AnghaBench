
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int libzfs_run_process_impl (char const*,char**,char**,int ,char***,int*) ;

int
libzfs_run_process_get_stdout(const char *path, char *argv[], char *env[],
    char **lines[], int *lines_cnt)
{
 return (libzfs_run_process_impl(path, argv, env, 0, lines, lines_cnt));
}
