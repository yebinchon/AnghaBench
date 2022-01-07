
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
struct dirent {scalar_t__ d_type; int d_name; } ;


 scalar_t__ DT_DIR ;
 scalar_t__ DT_LNK ;
 scalar_t__ DT_UNKNOWN ;
 int FALSE ;
 int FILE_ATTRIBUTE_DIRECTORY ;
 int GetFileAttributesA (char*) ;
 int S_ISDIR (int ) ;
 int ag_asprintf (char**,char*,char const*,int ) ;
 int free (char*) ;
 scalar_t__ stat (char*,struct stat*) ;

int is_directory(const char *path, const struct dirent *d) {
    char *full_path;
    struct stat s;
    ag_asprintf(&full_path, "%s/%s", path, d->d_name);
    if (stat(full_path, &s) != 0) {
        free(full_path);
        return FALSE;
    }



    int is_dir = S_ISDIR(s.st_mode);

    free(full_path);
    return is_dir;
}
