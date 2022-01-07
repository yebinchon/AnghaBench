
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AF_LOCAL ;
 int O_BINARY ;
 int SHUT_RD ;
 int SHUT_WR ;
 int SOCK_STREAM ;
 int setmode (int,int ) ;
 int shutdown (int,int ) ;
 scalar_t__ vlc_socketpair (int ,int ,int ,int*,int) ;

int vlc_pipe (int fds[2])
{
    if (vlc_socketpair (AF_LOCAL, SOCK_STREAM, 0, fds, 0))
        return -1;

    shutdown (fds[0], SHUT_WR);
    shutdown (fds[1], SHUT_RD);

    setmode (fds[0], O_BINARY);
    setmode (fds[1], O_BINARY);

    return 0;
}
