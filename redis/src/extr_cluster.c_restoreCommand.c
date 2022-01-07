
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int robj ;
typedef int rio ;
struct TYPE_16__ {int argc; TYPE_2__** argv; int db; } ;
typedef TYPE_1__ client ;
struct TYPE_19__ {int dirty; } ;
struct TYPE_18__ {int ok; int busykeyerr; int syntaxerr; } ;
struct TYPE_17__ {int ptr; } ;


 scalar_t__ C_ERR ;
 scalar_t__ C_OK ;
 long long LRU_CLOCK () ;
 int addReply (TYPE_1__*,int ) ;
 int addReplyError (TYPE_1__*,char*) ;
 int dbAdd (int ,TYPE_2__*,int *) ;
 int dbDelete (int ,TYPE_2__*) ;
 scalar_t__ getLongLongFromObjectOrReply (TYPE_1__*,TYPE_2__*,long long*,int *) ;
 int * lookupKeyWrite (int ,TYPE_2__*) ;
 scalar_t__ mstime () ;
 int objectSetLRUOrLFU (int *,long long,long long,long long) ;
 int * rdbLoadObject (int,int *,TYPE_2__*) ;
 int rdbLoadObjectType (int *) ;
 int rioInitWithBuffer (int *,int ) ;
 int sdslen (int ) ;
 TYPE_6__ server ;
 int setExpire (TYPE_1__*,int ,TYPE_2__*,long long) ;
 TYPE_3__ shared ;
 int signalModifiedKey (int ,TYPE_2__*) ;
 int strcasecmp (int ,char*) ;
 scalar_t__ verifyDumpPayload (int ,int ) ;

void restoreCommand(client *c) {
    long long ttl, lfu_freq = -1, lru_idle = -1, lru_clock = -1;
    rio payload;
    int j, type, replace = 0, absttl = 0;
    robj *obj;


    for (j = 4; j < c->argc; j++) {
        int additional = c->argc-j-1;
        if (!strcasecmp(c->argv[j]->ptr,"replace")) {
            replace = 1;
        } else if (!strcasecmp(c->argv[j]->ptr,"absttl")) {
            absttl = 1;
        } else if (!strcasecmp(c->argv[j]->ptr,"idletime") && additional >= 1 &&
                   lfu_freq == -1)
        {
            if (getLongLongFromObjectOrReply(c,c->argv[j+1],&lru_idle,((void*)0))
                    != C_OK) return;
            if (lru_idle < 0) {
                addReplyError(c,"Invalid IDLETIME value, must be >= 0");
                return;
            }
            lru_clock = LRU_CLOCK();
            j++;
        } else if (!strcasecmp(c->argv[j]->ptr,"freq") && additional >= 1 &&
                   lru_idle == -1)
        {
            if (getLongLongFromObjectOrReply(c,c->argv[j+1],&lfu_freq,((void*)0))
                    != C_OK) return;
            if (lfu_freq < 0 || lfu_freq > 255) {
                addReplyError(c,"Invalid FREQ value, must be >= 0 and <= 255");
                return;
            }
            j++;
        } else {
            addReply(c,shared.syntaxerr);
            return;
        }
    }


    if (!replace && lookupKeyWrite(c->db,c->argv[1]) != ((void*)0)) {
        addReply(c,shared.busykeyerr);
        return;
    }


    if (getLongLongFromObjectOrReply(c,c->argv[2],&ttl,((void*)0)) != C_OK) {
        return;
    } else if (ttl < 0) {
        addReplyError(c,"Invalid TTL value, must be >= 0");
        return;
    }


    if (verifyDumpPayload(c->argv[3]->ptr,sdslen(c->argv[3]->ptr)) == C_ERR)
    {
        addReplyError(c,"DUMP payload version or checksum are wrong");
        return;
    }

    rioInitWithBuffer(&payload,c->argv[3]->ptr);
    if (((type = rdbLoadObjectType(&payload)) == -1) ||
        ((obj = rdbLoadObject(type,&payload,c->argv[1])) == ((void*)0)))
    {
        addReplyError(c,"Bad data format");
        return;
    }


    if (replace) dbDelete(c->db,c->argv[1]);


    dbAdd(c->db,c->argv[1],obj);
    if (ttl) {
        if (!absttl) ttl+=mstime();
        setExpire(c,c->db,c->argv[1],ttl);
    }
    objectSetLRUOrLFU(obj,lfu_freq,lru_idle,lru_clock);
    signalModifiedKey(c->db,c->argv[1]);
    addReply(c,shared.ok);
    server.dirty++;
}
