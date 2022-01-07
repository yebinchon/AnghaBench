
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PATH_CHAR ;
 char* strrchr (char*,int ) ;

char *
basename(char *path)
{
    char *base;

    base = strrchr(path, PATH_CHAR);
    if (base)
        return ++base;
    return path;
}
