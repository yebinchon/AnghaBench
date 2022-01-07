
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int robj ;
typedef int redisDb ;
struct TYPE_2__ {scalar_t__ lazyfree_lazy_server_del; } ;


 int dbAsyncDelete (int *,int *) ;
 int dbSyncDelete (int *,int *) ;
 TYPE_1__ server ;

int dbDelete(redisDb *db, robj *key) {
    return server.lazyfree_lazy_server_del ? dbAsyncDelete(db,key) :
                                             dbSyncDelete(db,key);
}
