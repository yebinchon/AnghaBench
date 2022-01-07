
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int conn; int flags; } ;
typedef TYPE_1__ client ;
struct TYPE_5__ {int step; scalar_t__ maxlen_hint_sent; int maxlen; int cbuf; scalar_t__ luabp; scalar_t__ bpcount; int conn; int logs; } ;


 int CLIENT_LUA_DEBUG ;
 int LDB_MAX_LEN_DEFAULT ;
 TYPE_3__ ldb ;
 int ldbFlushLog (int ) ;
 int sdsempty () ;
 int sdsfree (int ) ;

void ldbEnable(client *c) {
    c->flags |= CLIENT_LUA_DEBUG;
    ldbFlushLog(ldb.logs);
    ldb.conn = c->conn;
    ldb.step = 1;
    ldb.bpcount = 0;
    ldb.luabp = 0;
    sdsfree(ldb.cbuf);
    ldb.cbuf = sdsempty();
    ldb.maxlen = LDB_MAX_LEN_DEFAULT;
    ldb.maxlen_hint_sent = 0;
}
