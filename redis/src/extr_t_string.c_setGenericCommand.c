
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int robj ;
struct TYPE_14__ {size_t resp; TYPE_4__* db; TYPE_1__* cmd; } ;
typedef TYPE_2__ client ;
struct TYPE_17__ {int dirty; } ;
struct TYPE_16__ {int id; } ;
struct TYPE_15__ {int * ok; int ** null; } ;
struct TYPE_13__ {int name; } ;


 scalar_t__ C_OK ;
 int NOTIFY_GENERIC ;
 int NOTIFY_STRING ;
 int OBJ_SET_NX ;
 int OBJ_SET_XX ;
 int UNIT_SECONDS ;
 int addReply (TYPE_2__*,int *) ;
 int addReplyErrorFormat (TYPE_2__*,char*,int ) ;
 scalar_t__ getLongLongFromObjectOrReply (TYPE_2__*,int *,long long*,int *) ;
 int * lookupKeyWrite (TYPE_4__*,int *) ;
 scalar_t__ mstime () ;
 int notifyKeyspaceEvent (int ,char*,int *,int ) ;
 TYPE_8__ server ;
 int setExpire (TYPE_2__*,TYPE_4__*,int *,scalar_t__) ;
 int setKey (TYPE_4__*,int *,int *) ;
 TYPE_3__ shared ;

void setGenericCommand(client *c, int flags, robj *key, robj *val, robj *expire, int unit, robj *ok_reply, robj *abort_reply) {
    long long milliseconds = 0;

    if (expire) {
        if (getLongLongFromObjectOrReply(c, expire, &milliseconds, ((void*)0)) != C_OK)
            return;
        if (milliseconds <= 0) {
            addReplyErrorFormat(c,"invalid expire time in %s",c->cmd->name);
            return;
        }
        if (unit == UNIT_SECONDS) milliseconds *= 1000;
    }

    if ((flags & OBJ_SET_NX && lookupKeyWrite(c->db,key) != ((void*)0)) ||
        (flags & OBJ_SET_XX && lookupKeyWrite(c->db,key) == ((void*)0)))
    {
        addReply(c, abort_reply ? abort_reply : shared.null[c->resp]);
        return;
    }
    setKey(c->db,key,val);
    server.dirty++;
    if (expire) setExpire(c,c->db,key,mstime()+milliseconds);
    notifyKeyspaceEvent(NOTIFY_STRING,"set",key,c->db->id);
    if (expire) notifyKeyspaceEvent(NOTIFY_GENERIC,
        "expire",key,c->db->id);
    addReply(c, ok_reply ? ok_reply : shared.ok);
}
