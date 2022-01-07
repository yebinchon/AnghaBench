
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pid_t ;


 int files_same (char const*,char*,int ) ;
 scalar_t__ getpid_cached () ;
 char* procfs_file_alloca (scalar_t__,char*) ;

int pid_from_same_root_fs(pid_t pid) {
        const char *root;

        if (pid < 0)
                return 0;

        if (pid == 0 || pid == getpid_cached())
                return 1;

        root = procfs_file_alloca(pid, "root");

        return files_same(root, "/proc/1/root", 0);
}
