
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ANET_ERR ;
 int ANET_OK ;
 int F_GETFL ;
 int F_SETFL ;
 int O_NONBLOCK ;
 int anetSetError (char*,char*,int ) ;
 int errno ;
 int fcntl (int,int ,...) ;
 int strerror (int ) ;

int anetSetBlock(char *err, int fd, int non_block) {
    int flags;




    if ((flags = fcntl(fd, F_GETFL)) == -1) {
        anetSetError(err, "fcntl(F_GETFL): %s", strerror(errno));
        return ANET_ERR;
    }

    if (non_block)
        flags |= O_NONBLOCK;
    else
        flags &= ~O_NONBLOCK;

    if (fcntl(fd, F_SETFL, flags) == -1) {
        anetSetError(err, "fcntl(F_SETFL,O_NONBLOCK): %s", strerror(errno));
        return ANET_ERR;
    }
    return ANET_OK;
}
