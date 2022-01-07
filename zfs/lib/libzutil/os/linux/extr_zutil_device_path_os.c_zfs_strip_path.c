
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strrchr (char*,char) ;

char *
zfs_strip_path(char *path)
{
 return (strrchr(path, '/') + 1);
}
