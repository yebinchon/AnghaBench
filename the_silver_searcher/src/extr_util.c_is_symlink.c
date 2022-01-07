
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
struct dirent {char* d_name; scalar_t__ d_type; } ;


 scalar_t__ DT_LNK ;
 scalar_t__ DT_UNKNOWN ;
 int FALSE ;
 int FILE_ATTRIBUTE_REPARSE_POINT ;
 int GetFileAttributesA (char*) ;
 int MAX_PATH ;
 int S_ISLNK (int ) ;
 int ag_asprintf (char**,char*,char const*,char*) ;
 int free (char*) ;
 scalar_t__ lstat (char*,struct stat*) ;
 int sprintf (char*,char*,char const*,char*) ;

int is_symlink(const char *path, const struct dirent *d) {
    char *full_path;
    struct stat s;
    ag_asprintf(&full_path, "%s/%s", path, d->d_name);
    if (lstat(full_path, &s) != 0) {
        free(full_path);
        return FALSE;
    }
    free(full_path);
    return S_ISLNK(s.st_mode);

}
