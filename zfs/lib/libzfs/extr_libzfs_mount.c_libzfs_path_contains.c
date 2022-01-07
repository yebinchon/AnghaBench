
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int boolean_t ;


 scalar_t__ strcmp (char const*,char const*) ;
 size_t strlen (char const*) ;
 char const* strstr (char const*,char const*) ;

__attribute__((used)) static boolean_t
libzfs_path_contains(const char *path1, const char *path2)
{
 return (strcmp(path1, path2) == 0 || strcmp(path1, "/") == 0 ||
     (strstr(path2, path1) == path2 && path2[strlen(path1)] == '/'));
}
