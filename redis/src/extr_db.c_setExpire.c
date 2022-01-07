
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_8__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int ptr; } ;
typedef TYPE_1__ robj ;
struct TYPE_12__ {int expires; int dict; } ;
typedef TYPE_2__ redisDb ;
typedef int dictEntry ;
struct TYPE_13__ {int flags; } ;
typedef TYPE_3__ client ;
struct TYPE_14__ {scalar_t__ repl_slave_ro; scalar_t__ masterhost; } ;


 int CLIENT_MASTER ;
 int * dictAddOrFind (int ,int ) ;
 int * dictFind (int ,int ) ;
 int dictGetKey (int *) ;
 int dictSetSignedIntegerVal (int *,long long) ;
 int rememberSlaveKeyWithExpire (TYPE_2__*,TYPE_1__*) ;
 TYPE_8__ server ;
 int serverAssertWithInfo (int *,TYPE_1__*,int ) ;

void setExpire(client *c, redisDb *db, robj *key, long long when) {
    dictEntry *kde, *de;


    kde = dictFind(db->dict,key->ptr);
    serverAssertWithInfo(((void*)0),key,kde != ((void*)0));
    de = dictAddOrFind(db->expires,dictGetKey(kde));
    dictSetSignedIntegerVal(de,when);

    int writable_slave = server.masterhost && server.repl_slave_ro == 0;
    if (c && writable_slave && !(c->flags & CLIENT_MASTER))
        rememberSlaveKeyWithExpire(db,key);
}
