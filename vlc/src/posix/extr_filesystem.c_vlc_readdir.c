
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirent {char const* d_name; } ;
typedef int DIR ;


 struct dirent* readdir (int *) ;

const char *vlc_readdir(DIR *dir)
{
    struct dirent *ent = readdir (dir);
    return (ent != ((void*)0)) ? ent->d_name : ((void*)0);
}
