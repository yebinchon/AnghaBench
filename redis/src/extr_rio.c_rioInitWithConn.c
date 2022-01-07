
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {size_t read_limit; int buf; scalar_t__ read_so_far; scalar_t__ pos; int * conn; } ;
struct TYPE_6__ {TYPE_2__ conn; } ;
struct TYPE_8__ {TYPE_1__ io; } ;
typedef TYPE_3__ rio ;
typedef int connection ;


 int PROTO_IOBUF_LEN ;
 TYPE_3__ rioConnIO ;
 int sdsclear (int ) ;
 int sdsnewlen (int *,int ) ;

void rioInitWithConn(rio *r, connection *conn, size_t read_limit) {
    *r = rioConnIO;
    r->io.conn.conn = conn;
    r->io.conn.pos = 0;
    r->io.conn.read_limit = read_limit;
    r->io.conn.read_so_far = 0;
    r->io.conn.buf = sdsnewlen(((void*)0), PROTO_IOBUF_LEN);
    sdsclear(r->io.conn.buf);
}
