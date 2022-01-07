
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirent {char* d_name; } ;
typedef int gboolean ;
typedef int DIR ;


 int FALSE ;
 int TRUE ;
 int closedir (int *) ;
 int find_process_in_dirent (struct dirent*,char const*) ;
 int fprintf (int ,char*) ;
 int * opendir (char*) ;
 struct dirent* readdir (int *) ;
 int stderr ;

gboolean process_is_running (const char *process_name)
{
    DIR *proc_dir = opendir("/proc");
    if (!proc_dir) {
        fprintf (stderr, "failed to open /proc/ dir\n");
        return FALSE;
    }

    struct dirent *subdir = ((void*)0);
    while ((subdir = readdir(proc_dir))) {
        char first = subdir->d_name[0];

        if (first > '9' || first < '1')
            continue;
        int pid = find_process_in_dirent(subdir, process_name);
        if (pid > 0) {
            closedir(proc_dir);
            return TRUE;
        }
    }

    closedir(proc_dir);
    return FALSE;
}
