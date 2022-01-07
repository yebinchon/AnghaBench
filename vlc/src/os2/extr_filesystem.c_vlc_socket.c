
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int socket (int,int,int) ;
 int vlc_socket_setup (int,int) ;

int vlc_socket (int pf, int type, int proto, bool nonblock)
{
    int fd = socket(pf, type, proto);
    if (fd != -1)
        vlc_socket_setup(fd, nonblock);
    return fd;
}
