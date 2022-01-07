
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char NUL ;
 int strlen (char*) ;

__attribute__((used)) static void
remove_tail(char *path)
{
    int i;

    for (i = strlen(path) - 1; i > 0; --i)
 if (path[i] == '/' || path[i] == '\\')
 {
     path[i] = NUL;
     break;
 }
}
