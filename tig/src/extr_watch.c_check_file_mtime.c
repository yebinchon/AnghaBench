
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
struct stat {scalar_t__ st_mtime; } ;
typedef int path ;


 int FORMAT_BUFFER (char*,int,char const*,int,int) ;
 int SIZEOF_STR ;
 scalar_t__ lstat (char*,struct stat*) ;

__attribute__((used)) static bool
check_file_mtime(time_t *last_modified, const char *path_fmt, ...)
{
 char path[SIZEOF_STR];
 struct stat stat;
 int retval;
 bool has_changed = !!*last_modified;

 FORMAT_BUFFER(path, sizeof(path), path_fmt, retval, 0);

 if (retval < 0 ||
     lstat(path, &stat) < 0 ||
     stat.st_mtime <= *last_modified)
  return 0;

 *last_modified = stat.st_mtime;
 return has_changed;
}
