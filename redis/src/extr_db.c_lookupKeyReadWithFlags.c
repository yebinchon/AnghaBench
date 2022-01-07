
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int robj ;
struct TYPE_10__ {int id; } ;
typedef TYPE_3__ redisDb ;
struct TYPE_11__ {int stat_keyspace_hits; int stat_keyspace_misses; TYPE_2__* current_client; TYPE_2__* master; int * masterhost; } ;
struct TYPE_9__ {TYPE_1__* cmd; } ;
struct TYPE_8__ {int flags; } ;


 int CMD_READONLY ;
 int NOTIFY_KEY_MISS ;
 int expireIfNeeded (TYPE_3__*,int *) ;
 int * lookupKey (TYPE_3__*,int *,int) ;
 int notifyKeyspaceEvent (int ,char*,int *,int ) ;
 TYPE_4__ server ;

robj *lookupKeyReadWithFlags(redisDb *db, robj *key, int flags) {
    robj *val;

    if (expireIfNeeded(db,key) == 1) {



        if (server.masterhost == ((void*)0)) {
            server.stat_keyspace_misses++;
            notifyKeyspaceEvent(NOTIFY_KEY_MISS, "keymiss", key, db->id);
            return ((void*)0);
        }
        if (server.current_client &&
            server.current_client != server.master &&
            server.current_client->cmd &&
            server.current_client->cmd->flags & CMD_READONLY)
        {
            server.stat_keyspace_misses++;
            notifyKeyspaceEvent(NOTIFY_KEY_MISS, "keymiss", key, db->id);
            return ((void*)0);
        }
    }
    val = lookupKey(db,key,flags);
    if (val == ((void*)0)) {
        server.stat_keyspace_misses++;
        notifyKeyspaceEvent(NOTIFY_KEY_MISS, "keymiss", key, db->id);
    }
    else
        server.stat_keyspace_hits++;
    return val;
}
