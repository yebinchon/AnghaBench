
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int * sds ;
struct TYPE_6__ {scalar_t__ pos; int * buf; } ;
struct TYPE_5__ {TYPE_2__ conn; } ;
struct TYPE_7__ {TYPE_1__ io; } ;
typedef TYPE_3__ rio ;


 int sdsfree (int *) ;
 size_t sdslen (int *) ;
 int sdsrange (int *,scalar_t__,int) ;

void rioFreeConn(rio *r, sds *remaining) {
    if (remaining && (size_t)r->io.conn.pos < sdslen(r->io.conn.buf)) {
        if (r->io.conn.pos > 0) sdsrange(r->io.conn.buf, r->io.conn.pos, -1);
        *remaining = r->io.conn.buf;
    } else {
        sdsfree(r->io.conn.buf);
        if (remaining) *remaining = ((void*)0);
    }
    r->io.conn.buf = ((void*)0);
}
