
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ERANGE ;
 int _PC_PATH_MAX ;
 scalar_t__ errno ;
 int free (char*) ;
 int * getcwd (char*,size_t) ;
 char* malloc (size_t) ;
 long pathconf (char*,int ) ;
 scalar_t__ unlikely (int ) ;

char *vlc_getcwd (void)
{
    long path_max = pathconf (".", _PC_PATH_MAX);
    size_t size = (path_max == -1 || path_max > 4096) ? 4096 : path_max;

    for (;; size *= 2)
    {
        char *buf = malloc (size);
        if (unlikely(buf == ((void*)0)))
            break;

        if (getcwd (buf, size) != ((void*)0))
            return buf;
        free (buf);

        if (errno != ERANGE)
            break;
    }
    return ((void*)0);
}
