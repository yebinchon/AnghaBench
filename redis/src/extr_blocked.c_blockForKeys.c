
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int streamID ;
typedef int robj ;
typedef int mstime_t ;
typedef void list ;
typedef int dictEntry ;
struct TYPE_8__ {int keys; int * target; int timeout; } ;
struct TYPE_10__ {TYPE_2__* db; TYPE_1__ bpop; } ;
typedef TYPE_3__ client ;
struct TYPE_9__ {int blocking_keys; } ;


 int BLOCKED_STREAM ;
 int DICT_OK ;
 int blockClient (TYPE_3__*,int) ;
 int dictAdd (int ,int *,void*) ;
 int * dictFind (int ,int *) ;
 void* dictGetVal (int *) ;
 int incrRefCount (int *) ;
 int listAddNodeTail (void*,TYPE_3__*) ;
 void* listCreate () ;
 int memcpy (void*,int *,int) ;
 int serverAssertWithInfo (TYPE_3__*,int *,int) ;
 int zfree (void*) ;
 void* zmalloc (int) ;

void blockForKeys(client *c, int btype, robj **keys, int numkeys, mstime_t timeout, robj *target, streamID *ids) {
    dictEntry *de;
    list *l;
    int j;

    c->bpop.timeout = timeout;
    c->bpop.target = target;

    if (target != ((void*)0)) incrRefCount(target);

    for (j = 0; j < numkeys; j++) {


        void *key_data = ((void*)0);
        if (btype == BLOCKED_STREAM) {
            key_data = zmalloc(sizeof(streamID));
            memcpy(key_data,ids+j,sizeof(streamID));
        }


        if (dictAdd(c->bpop.keys,keys[j],key_data) != DICT_OK) {
            zfree(key_data);
            continue;
        }
        incrRefCount(keys[j]);


        de = dictFind(c->db->blocking_keys,keys[j]);
        if (de == ((void*)0)) {
            int retval;


            l = listCreate();
            retval = dictAdd(c->db->blocking_keys,keys[j],l);
            incrRefCount(keys[j]);
            serverAssertWithInfo(c,keys[j],retval == DICT_OK);
        } else {
            l = dictGetVal(de);
        }
        listAddNodeTail(l,c);
    }
    blockClient(c,btype);
}
