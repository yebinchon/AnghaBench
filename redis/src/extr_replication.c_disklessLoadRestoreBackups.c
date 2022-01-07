
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int expires; int dict; } ;
typedef TYPE_1__ redisDb ;
struct TYPE_7__ {int dbnum; TYPE_1__* db; } ;


 int dictRelease (int ) ;
 int emptyDbGeneric (TYPE_1__*,int,int,int ) ;
 int replicationEmptyDbCallback ;
 TYPE_3__ server ;
 int zfree (TYPE_1__*) ;

void disklessLoadRestoreBackups(redisDb *backup, int restore, int empty_db_flags)
{
    if (restore) {

        emptyDbGeneric(server.db,-1,empty_db_flags,replicationEmptyDbCallback);
        for (int i=0; i<server.dbnum; i++) {
            dictRelease(server.db[i].dict);
            dictRelease(server.db[i].expires);
            server.db[i] = backup[i];
        }
    } else {

        emptyDbGeneric(backup,-1,empty_db_flags,replicationEmptyDbCallback);
        for (int i=0; i<server.dbnum; i++) {
            dictRelease(backup[i].dict);
            dictRelease(backup[i].expires);
        }
    }
    zfree(backup);
}
