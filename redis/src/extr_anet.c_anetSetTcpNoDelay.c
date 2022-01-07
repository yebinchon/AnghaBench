
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;


 int ANET_ERR ;
 int ANET_OK ;
 int IPPROTO_TCP ;
 int TCP_NODELAY ;
 int anetSetError (char*,char*,int ) ;
 int errno ;
 int setsockopt (int,int ,int ,int*,int) ;
 int strerror (int ) ;

__attribute__((used)) static int anetSetTcpNoDelay(char *err, int fd, int val)
{
    if (setsockopt(fd, IPPROTO_TCP, TCP_NODELAY, &val, sizeof(val)) == -1)
    {
        anetSetError(err, "setsockopt TCP_NODELAY: %s", strerror(errno));
        return ANET_ERR;
    }
    return ANET_OK;
}
