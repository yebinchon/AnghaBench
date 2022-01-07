
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int sds ;
struct TYPE_17__ {char* ptr; } ;
typedef TYPE_2__ robj ;
struct TYPE_18__ {int last_dbid; int last_use_time; int * conn; } ;
typedef TYPE_3__ migrateCachedSocket ;
typedef int dictEntry ;
typedef int connection ;
struct TYPE_19__ {TYPE_1__** argv; } ;
typedef TYPE_4__ client ;
struct TYPE_20__ {int migrate_cached_sockets; int unixtime; scalar_t__ tls_cluster; } ;
struct TYPE_16__ {int ptr; } ;


 scalar_t__ C_OK ;
 scalar_t__ MIGRATE_SOCKET_CACHE_ITEMS ;
 int addReplySds (TYPE_4__*,int ) ;
 int atoi (int ) ;
 scalar_t__ connBlockingConnect (int *,int ,int ,long) ;
 int connClose (int *) ;
 int * connCreateSocket () ;
 int * connCreateTLS () ;
 int connEnableTcpNoDelay (int *) ;
 int dictAdd (int ,int ,TYPE_3__*) ;
 int dictDelete (int ,int ) ;
 TYPE_3__* dictFetchValue (int ,int ) ;
 int dictGetKey (int *) ;
 int * dictGetRandomKey (int ) ;
 TYPE_3__* dictGetVal (int *) ;
 scalar_t__ dictSize (int ) ;
 int sdscatlen (int ,char*,int) ;
 int sdsempty () ;
 int sdsfree (int ) ;
 int sdslen (char*) ;
 int sdsnew (char*) ;
 TYPE_7__ server ;
 int zfree (TYPE_3__*) ;
 TYPE_3__* zmalloc (int) ;

migrateCachedSocket* migrateGetSocket(client *c, robj *host, robj *port, long timeout) {
    connection *conn;
    sds name = sdsempty();
    migrateCachedSocket *cs;


    name = sdscatlen(name,host->ptr,sdslen(host->ptr));
    name = sdscatlen(name,":",1);
    name = sdscatlen(name,port->ptr,sdslen(port->ptr));
    cs = dictFetchValue(server.migrate_cached_sockets,name);
    if (cs) {
        sdsfree(name);
        cs->last_use_time = server.unixtime;
        return cs;
    }


    if (dictSize(server.migrate_cached_sockets) == MIGRATE_SOCKET_CACHE_ITEMS) {

        dictEntry *de = dictGetRandomKey(server.migrate_cached_sockets);
        cs = dictGetVal(de);
        connClose(cs->conn);
        zfree(cs);
        dictDelete(server.migrate_cached_sockets,dictGetKey(de));
    }


    conn = server.tls_cluster ? connCreateTLS() : connCreateSocket();
    if (connBlockingConnect(conn, c->argv[1]->ptr, atoi(c->argv[2]->ptr), timeout)
            != C_OK) {
        addReplySds(c,
            sdsnew("-IOERR error or timeout connecting to the client\r\n"));
        connClose(conn);
        sdsfree(name);
        return ((void*)0);
    }
    connEnableTcpNoDelay(conn);


    cs = zmalloc(sizeof(*cs));
    cs->conn = conn;

    cs->last_dbid = -1;
    cs->last_use_time = server.unixtime;
    dictAdd(server.migrate_cached_sockets,name,cs);
    return cs;
}
