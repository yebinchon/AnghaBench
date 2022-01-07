
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcat (char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static void
add_pathsep(char *name)
{
    int len = strlen(name);

    if (len > 0 && name[len - 1] != '\\' && name[len - 1] != '/')
 strcat(name, "\\");
}
