
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirent {char* d_name; } ;
typedef size_t ssize_t ;


 int SEAF_PATH_MAX ;
 int atoi (char*) ;
 int g_free (char*) ;
 char* g_path_get_basename (char*) ;
 size_t readlink (char*,char*,int) ;
 scalar_t__ sprintf (char*,char*,char*) ;
 int strcmp (char*,char const*) ;

__attribute__((used)) static int
find_process_in_dirent(struct dirent *dir, const char *process_name)
{
    char path[512];

    if (sprintf (path, "/proc/%s/exe", dir->d_name) < 0) {
        return -1;
    }

    char buf[SEAF_PATH_MAX];

    ssize_t l = readlink(path, buf, SEAF_PATH_MAX);

    if (l < 0)
        return -1;
    buf[l] = '\0';


    char *base = g_path_get_basename(buf);
    int ret = strcmp(base, process_name);
    g_free(base);

    if (ret == 0)
        return atoi(dir->d_name);
    else
        return -1;
}
