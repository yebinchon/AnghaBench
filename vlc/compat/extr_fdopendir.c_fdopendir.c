
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
typedef int DIR ;



 int EBADF ;
 int EIO ;





 int ENOTDIR ;
 int F_GETFL ;
 int O_ACCMODE ;
 int O_WRONLY ;
 int S_ISDIR (int ) ;
 int close (int) ;
 int errno ;
 int fcntl (int,int ) ;
 scalar_t__ fstat (int,struct stat*) ;
 int * opendir (char*) ;
 int sprintf (char*,char*,int) ;

DIR *fdopendir (int fd)
{
    struct stat st;
    if (fstat (fd, &st))
        return ((void*)0);

    if (!S_ISDIR (st.st_mode))
    {
        errno = ENOTDIR;
        return ((void*)0);
    }



    char path[sizeof ("/proc/self/fd/") + 3 * sizeof (int)];
    sprintf (path, "/proc/self/fd/%u", fd);

    DIR *dir = opendir (path);
    if (dir != ((void*)0))
    {
        close (fd);
        return dir;
    }


    switch (errno)
    {
        case 133:

        case 132:

        case 130:
        case 128:
        case 131:
        case 129:
            errno = EIO;
    }
    return ((void*)0);
}
