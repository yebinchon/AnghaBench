
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {scalar_t__ st_dev; scalar_t__ st_ino; } ;


 scalar_t__ ERANGE ;
 char* ToLocaleDup (char const*) ;
 int _PC_PATH_MAX ;
 scalar_t__ errno ;
 int free (char*) ;
 int * getcwd (char*,size_t) ;
 char* getenv (char*) ;
 char* malloc (size_t) ;
 long pathconf (char*,int ) ;
 scalar_t__ stat (char const*,struct stat*) ;
 scalar_t__ unlikely (int ) ;

char *vlc_getcwd (void)
{

    const char *pwd = getenv ("PWD");
    if (pwd != ((void*)0))
    {
        struct stat s1, s2;

        if (stat (pwd, &s1) == 0 && stat (".", &s2) == 0
         && s1.st_dev == s2.st_dev && s1.st_ino == s2.st_ino)
            return ToLocaleDup (pwd);
    }


    long path_max = pathconf (".", _PC_PATH_MAX);
    size_t size = (path_max == -1 || path_max > 4096) ? 4096 : path_max;

    for (;; size *= 2)
    {
        char *buf = malloc (size);
        if (unlikely(buf == ((void*)0)))
            break;

        if (getcwd (buf, size) != ((void*)0))
        {
            char *ret = ToLocaleDup (buf);
            free (buf);
            return ret;
        }
        free (buf);

        if (errno != ERANGE)
            break;
    }
    return ((void*)0);
}
