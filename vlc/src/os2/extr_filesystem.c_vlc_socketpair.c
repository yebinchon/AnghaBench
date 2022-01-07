
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ socketpair (int,int,int,int*) ;
 int vlc_socket_setup (int,int) ;

int vlc_socketpair(int pf, int type, int proto, int fds[2], bool nonblock)
{
    if (socketpair(pf, type, proto, fds))
        return -1;

    vlc_socket_setup(fds[0], nonblock);
    vlc_socket_setup(fds[1], nonblock);
    return 0;
}
