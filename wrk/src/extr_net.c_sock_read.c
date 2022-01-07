
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int status ;
typedef scalar_t__ ssize_t ;
struct TYPE_3__ {int buf; int fd; } ;
typedef TYPE_1__ connection ;


 int ERROR ;
 int OK ;
 scalar_t__ read (int ,int ,int) ;

status sock_read(connection *c, size_t *n) {
    ssize_t r = read(c->fd, c->buf, sizeof(c->buf));
    *n = (size_t) r;
    return r >= 0 ? OK : ERROR;
}
