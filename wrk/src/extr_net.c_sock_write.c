
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int status ;
typedef int ssize_t ;
struct TYPE_3__ {int fd; } ;
typedef TYPE_1__ connection ;



 int ERROR ;
 int OK ;
 int RETRY ;
 int errno ;
 int write (int ,char*,size_t) ;

status sock_write(connection *c, char *buf, size_t len, size_t *n) {
    ssize_t r;
    if ((r = write(c->fd, buf, len)) == -1) {
        switch (errno) {
            case 128: return RETRY;
            default: return ERROR;
        }
    }
    *n = (size_t) r;
    return OK;
}
