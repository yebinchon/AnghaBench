
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int fd; int buf; scalar_t__ pos; } ;
struct TYPE_7__ {TYPE_1__ fd; } ;
struct TYPE_8__ {TYPE_2__ io; } ;
typedef TYPE_3__ rio ;


 TYPE_3__ rioFdIO ;
 int sdsempty () ;

void rioInitWithFd(rio *r, int fd) {
    *r = rioFdIO;
    r->io.fd.fd = fd;
    r->io.fd.pos = 0;
    r->io.fd.buf = sdsempty();
}
