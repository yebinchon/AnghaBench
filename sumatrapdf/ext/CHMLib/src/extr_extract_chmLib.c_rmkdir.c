
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ dir_exists (char*) ;
 int mkdir (char*,int) ;
 char* strrchr (char*,char) ;

__attribute__((used)) static int rmkdir(char *path)
{





    char *i = strrchr(path, '/');

    if(path[0] == '\0' || dir_exists(path))
        return 0;

    if (i != ((void*)0))
    {
        *i = '\0';
        rmkdir(path);
        *i = '/';
        mkdir(path, 0777);
    }




    if (dir_exists(path))
        return 0;
    else
        return -1;

}
