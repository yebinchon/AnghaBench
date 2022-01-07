
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {scalar_t__ st_ino; } ;
typedef int pid_t ;


 int SIZE_MAX ;
 int errno ;
 int get_mount_namespace_leader (int ,int *) ;
 int get_process_cmdline (int ,int ,int ,char**) ;
 char* procfs_file_alloca (int ,char*) ;
 scalar_t__ stat (char const*,struct stat*) ;

__attribute__((used)) static int get_process_container_parent_cmdline(pid_t pid, char** cmdline) {
        int r = 0;
        pid_t container_pid;
        const char *proc_root_path;
        struct stat root_stat, proc_root_stat;


        if (stat("/", &root_stat) < 0)
                return -errno;

        proc_root_path = procfs_file_alloca(pid, "root");
        if (stat(proc_root_path, &proc_root_stat) < 0)
                return -errno;


        if (proc_root_stat.st_ino == root_stat.st_ino) {
                *cmdline = ((void*)0);
                return 0;
        }

        r = get_mount_namespace_leader(pid, &container_pid);
        if (r < 0)
                return r;

        r = get_process_cmdline(container_pid, SIZE_MAX, 0, cmdline);
        if (r < 0)
                return r;

        return 1;
}
