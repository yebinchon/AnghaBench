
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int sds ;
struct TYPE_8__ {char* ptr; } ;
typedef TYPE_1__ robj ;
struct TYPE_9__ {int conn; } ;
typedef TYPE_2__ migrateCachedSocket ;
struct TYPE_10__ {int migrate_cached_sockets; } ;


 int connClose (int ) ;
 int dictDelete (int ,int ) ;
 TYPE_2__* dictFetchValue (int ,int ) ;
 int sdscatlen (int ,char*,int) ;
 int sdsempty () ;
 int sdsfree (int ) ;
 int sdslen (char*) ;
 TYPE_4__ server ;
 int zfree (TYPE_2__*) ;

void migrateCloseSocket(robj *host, robj *port) {
    sds name = sdsempty();
    migrateCachedSocket *cs;

    name = sdscatlen(name,host->ptr,sdslen(host->ptr));
    name = sdscatlen(name,":",1);
    name = sdscatlen(name,port->ptr,sdslen(port->ptr));
    cs = dictFetchValue(server.migrate_cached_sockets,name);
    if (!cs) {
        sdsfree(name);
        return;
    }

    connClose(cs->conn);
    zfree(cs);
    dictDelete(server.migrate_cached_sockets,name);
    sdsfree(name);
}
