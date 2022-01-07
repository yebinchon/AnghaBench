
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;


 int SOCK_CLOEXEC ;
 int SOCK_NONBLOCK ;
 int SOL_SOCKET ;
 int SO_NOSIGPIPE ;
 int setsockopt (int,int ,int ,int const*,int) ;
 int socketpair (int,int,int,int*) ;
 int vlc_socket_setup (int,int) ;

int vlc_socketpair(int pf, int type, int proto, int fds[2], bool nonblock)
{
    int ret = socketpair(pf, type, proto, fds);
    if (ret == 0)
    {
        vlc_socket_setup(fds[0], nonblock);
        vlc_socket_setup(fds[1], nonblock);
    }

    return ret;
}
