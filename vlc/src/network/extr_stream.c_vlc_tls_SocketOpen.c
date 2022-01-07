
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_tls_t ;


 int * vlc_tls_SocketAlloc (int,int *,int ) ;

vlc_tls_t *vlc_tls_SocketOpen(int fd)
{
    return vlc_tls_SocketAlloc(fd, ((void*)0), 0);
}
