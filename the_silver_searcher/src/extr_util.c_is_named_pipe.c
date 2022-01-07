
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
struct dirent {scalar_t__ d_type; int d_name; } ;


 scalar_t__ DT_FIFO ;
 scalar_t__ DT_LNK ;
 scalar_t__ DT_SOCK ;
 scalar_t__ DT_UNKNOWN ;
 int FALSE ;
 scalar_t__ S_ISFIFO (int ) ;
 scalar_t__ S_ISSOCK (int ) ;
 int ag_asprintf (char**,char*,char const*,int ) ;
 int free (char*) ;
 scalar_t__ stat (char*,struct stat*) ;

int is_named_pipe(const char *path, const struct dirent *d) {





    char *full_path;
    struct stat s;
    ag_asprintf(&full_path, "%s/%s", path, d->d_name);
    if (stat(full_path, &s) != 0) {
        free(full_path);
        return FALSE;
    }
    free(full_path);
    return S_ISFIFO(s.st_mode)



        ;
}
