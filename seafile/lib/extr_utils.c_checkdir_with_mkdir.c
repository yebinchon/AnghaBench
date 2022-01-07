
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int g_free (char*) ;
 int g_mkdir_with_parents (char const*,int) ;
 char* g_strdup (char const*) ;
 int strlen (char*) ;

int
checkdir_with_mkdir (const char *dir)
{
    return g_mkdir_with_parents(dir, 0755);

}
