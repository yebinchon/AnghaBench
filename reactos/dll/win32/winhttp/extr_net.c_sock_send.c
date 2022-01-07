
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EINTR ;
 int WARN (char*,int ) ;
 scalar_t__ errno ;
 int send (int,void const*,size_t,int) ;
 int strerror (scalar_t__) ;

__attribute__((used)) static int sock_send(int fd, const void *msg, size_t len, int flags)
{
    int ret;
    do
    {
        if ((ret = send(fd, msg, len, flags)) == -1) WARN("send error %s\n", strerror(errno));
    }
    while(ret == -1 && errno == EINTR);
    return ret;
}
