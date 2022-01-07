
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
typedef int ssize_t ;
typedef int socklen_t ;




 int errno ;
 int recv (int,void*,size_t,int ) ;
 int recvfrom (int,void*,size_t,int ,struct sockaddr*,int *) ;

__attribute__((used)) static inline ssize_t rist_ReadFrom(int fd, void *buf, size_t len, struct sockaddr *peer,
    socklen_t *slen)
{
    ssize_t ret = -1;

    if (peer == ((void*)0))
        ret = recv(fd, buf, len, 0);
    else
        ret = recvfrom(fd, buf, len, 0, peer, slen);

    if (ret == -1)
    {
        switch (errno)
        {
        case 129:
        case 128:

            if (peer == ((void*)0))
                ret = recv(fd, buf, len, 0);
            else
                ret = recvfrom(fd, buf, len, 0, peer, slen);
        default:
            break;
        }
    }
    return ret;
}
