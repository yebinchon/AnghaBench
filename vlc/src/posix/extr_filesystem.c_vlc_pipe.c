
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_CLOEXEC ;
 int pipe (int*) ;
 int pipe2 (int*,int ) ;
 int vlc_cloexec (int) ;

int vlc_pipe (int fds[2])
{



    int ret = pipe(fds);
    if (ret == 0)
    {
        vlc_cloexec(fds[0]);
        vlc_cloexec(fds[1]);
    }
    return ret;

}
