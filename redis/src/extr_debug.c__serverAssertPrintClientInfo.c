
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int conninfo ;
struct TYPE_4__ {int argc; TYPE_2__** argv; int conn; scalar_t__ flags; } ;
typedef TYPE_1__ client ;
typedef int buf ;
struct TYPE_5__ {int type; int encoding; int refcount; scalar_t__ ptr; } ;


 int CONN_INFO_LEN ;
 int LL_WARNING ;
 int OBJ_STRING ;
 int bugReportStart () ;
 int connGetInfo (int ,char*,int) ;
 scalar_t__ sdsEncodedObject (TYPE_2__*) ;
 int serverLog (int ,char*,...) ;
 int snprintf (char*,int,char*,int,int) ;

void _serverAssertPrintClientInfo(const client *c) {
    int j;
    char conninfo[CONN_INFO_LEN];

    bugReportStart();
    serverLog(LL_WARNING,"=== ASSERTION FAILED CLIENT CONTEXT ===");
    serverLog(LL_WARNING,"client->flags = %llu", (unsigned long long) c->flags);
    serverLog(LL_WARNING,"client->conn = %s", connGetInfo(c->conn, conninfo, sizeof(conninfo)));
    serverLog(LL_WARNING,"client->argc = %d", c->argc);
    for (j=0; j < c->argc; j++) {
        char buf[128];
        char *arg;

        if (c->argv[j]->type == OBJ_STRING && sdsEncodedObject(c->argv[j])) {
            arg = (char*) c->argv[j]->ptr;
        } else {
            snprintf(buf,sizeof(buf),"Object type: %u, encoding: %u",
                c->argv[j]->type, c->argv[j]->encoding);
            arg = buf;
        }
        serverLog(LL_WARNING,"client->argv[%d] = \"%s\" (refcount: %d)",
            j, arg, c->argv[j]->refcount);
    }
}
