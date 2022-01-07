
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat64 {int dummy; } ;
typedef int boolean_t ;


 int B_FALSE ;
 int asprintf (char**,char*,char const*,char*,char*,char*,char*) ;
 int free (char*) ;
 scalar_t__ stat64 (char*,struct stat64*) ;

__attribute__((used)) static boolean_t
zfs_mod_supported_impl(const char *scope, const char *name, const char *sysfs)
{
 boolean_t supported = B_FALSE;
 char *path;

 int len = asprintf(&path, "%s%s%s%s%s", sysfs,
     scope == ((void*)0) ? "" : "/", scope == ((void*)0) ? "" : scope,
     name == ((void*)0) ? "" : "/", name == ((void*)0) ? "" : name);
 if (len > 0) {
  struct stat64 statbuf;
  supported = !!(stat64(path, &statbuf) == 0);
  free(path);
 }

 return (supported);
}
