
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ last_use_time; int conn; } ;
typedef TYPE_1__ migrateCachedSocket ;
typedef int dictIterator ;
typedef int dictEntry ;
struct TYPE_6__ {scalar_t__ unixtime; int migrate_cached_sockets; } ;


 scalar_t__ MIGRATE_SOCKET_CACHE_TTL ;
 int connClose (int ) ;
 int dictDelete (int ,int ) ;
 int dictGetKey (int *) ;
 int * dictGetSafeIterator (int ) ;
 TYPE_1__* dictGetVal (int *) ;
 int * dictNext (int *) ;
 int dictReleaseIterator (int *) ;
 TYPE_3__ server ;
 int zfree (TYPE_1__*) ;

void migrateCloseTimedoutSockets(void) {
    dictIterator *di = dictGetSafeIterator(server.migrate_cached_sockets);
    dictEntry *de;

    while((de = dictNext(di)) != ((void*)0)) {
        migrateCachedSocket *cs = dictGetVal(de);

        if ((server.unixtime - cs->last_use_time) > MIGRATE_SOCKET_CACHE_TTL) {
            connClose(cs->conn);
            zfree(cs);
            dictDelete(server.migrate_cached_sockets,dictGetKey(de));
        }
    }
    dictReleaseIterator(di);
}
