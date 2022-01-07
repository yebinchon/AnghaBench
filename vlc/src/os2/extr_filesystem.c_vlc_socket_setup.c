
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FD_CLOEXEC ;
 int F_GETFL ;
 int F_SETFD ;
 int F_SETFL ;
 int O_NONBLOCK ;
 int fcntl (int,int ,int) ;

__attribute__((used)) static void vlc_socket_setup(int fd, bool nonblock)
{
    fcntl(fd, F_SETFD, FD_CLOEXEC);

    if (nonblock)
        fcntl(fd, F_SETFL, fcntl(fd, F_GETFL, 0) | O_NONBLOCK);
}
