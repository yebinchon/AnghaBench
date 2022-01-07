
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirent {char* d_name; } ;
typedef int DIR ;


 int FALSE ;
 int closedir (int *) ;
 int errno ;
 scalar_t__ find_process_in_dirent (struct dirent*,char const*) ;
 int g_warning (char*,int ) ;
 int * opendir (char*) ;
 struct dirent* readdir (int *) ;
 int strerror (int ) ;

int count_process(const char *process_name)
{
    int count = 0;
    DIR *proc_dir = opendir("/proc");
    if (!proc_dir) {
        g_warning ("failed to open /proc/ :%s\n", strerror(errno));
        return FALSE;
    }

    struct dirent *subdir = ((void*)0);
    while ((subdir = readdir(proc_dir))) {
        char first = subdir->d_name[0];

        if (first > '9' || first < '1')
            continue;
        if (find_process_in_dirent(subdir, process_name) > 0) {
            count++;
        }
    }

    closedir (proc_dir);
    return count;
}
