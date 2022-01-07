
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int robj ;
struct TYPE_12__ {int id; } ;
typedef TYPE_1__ redisDb ;
struct TYPE_13__ {TYPE_8__* db; } ;
typedef TYPE_2__ client ;
struct TYPE_16__ {int id; } ;
struct TYPE_15__ {int lpushCommand; int rpopCommand; int lpopCommand; } ;
struct TYPE_14__ {int * lpush; int * rpop; int * lpop; } ;


 int C_ERR ;
 int C_OK ;
 int LIST_HEAD ;
 int NOTIFY_LIST ;
 int OBJ_LIST ;
 int PROPAGATE_AOF ;
 int PROPAGATE_REPL ;
 int addReplyArrayLen (TYPE_2__*,int) ;
 int addReplyBulk (TYPE_2__*,int *) ;
 scalar_t__ checkType (TYPE_2__*,int *,int ) ;
 int * lookupKeyWrite (TYPE_8__*,int *) ;
 int notifyKeyspaceEvent (int ,char*,int *,int ) ;
 int propagate (int ,int ,int **,int,int) ;
 int rpoplpushHandlePush (TYPE_2__*,int *,int *,int *) ;
 TYPE_4__ server ;
 TYPE_3__ shared ;

int serveClientBlockedOnList(client *receiver, robj *key, robj *dstkey, redisDb *db, robj *value, int where)
{
    robj *argv[3];

    if (dstkey == ((void*)0)) {

        argv[0] = (where == LIST_HEAD) ? shared.lpop :
                                          shared.rpop;
        argv[1] = key;
        propagate((where == LIST_HEAD) ?
            server.lpopCommand : server.rpopCommand,
            db->id,argv,2,PROPAGATE_AOF|PROPAGATE_REPL);


        addReplyArrayLen(receiver,2);
        addReplyBulk(receiver,key);
        addReplyBulk(receiver,value);


        char *event = (where == LIST_HEAD) ? "lpop" : "rpop";
        notifyKeyspaceEvent(NOTIFY_LIST,event,key,receiver->db->id);
    } else {

        robj *dstobj =
            lookupKeyWrite(receiver->db,dstkey);
        if (!(dstobj &&
             checkType(receiver,dstobj,OBJ_LIST)))
        {

            argv[0] = shared.rpop;
            argv[1] = key;
            propagate(server.rpopCommand,
                db->id,argv,2,
                PROPAGATE_AOF|
                PROPAGATE_REPL);
            rpoplpushHandlePush(receiver,dstkey,dstobj,
                value);

            argv[0] = shared.lpush;
            argv[1] = dstkey;
            argv[2] = value;
            propagate(server.lpushCommand,
                db->id,argv,3,
                PROPAGATE_AOF|
                PROPAGATE_REPL);


            notifyKeyspaceEvent(NOTIFY_LIST,"rpop",key,receiver->db->id);
        } else {


            return C_ERR;
        }
    }
    return C_OK;
}
