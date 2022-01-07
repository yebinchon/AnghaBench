
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ sds ;
struct TYPE_5__ {scalar_t__ type; } ;
typedef TYPE_1__ robj ;
typedef int list ;
typedef int dictEntry ;


 scalar_t__ OBJ_HASH ;
 scalar_t__ OBJ_SET ;
 scalar_t__ OBJ_ZSET ;
 TYPE_1__* createStringObject (scalar_t__,int ) ;
 TYPE_1__* createStringObjectFromLongDouble (double,int ) ;
 scalar_t__ dictGetKey (int const*) ;
 scalar_t__ dictGetVal (int const*) ;
 int listAddNodeTail (int *,TYPE_1__*) ;
 int sdslen (scalar_t__) ;
 int serverPanic (char*) ;

void scanCallback(void *privdata, const dictEntry *de) {
    void **pd = (void**) privdata;
    list *keys = pd[0];
    robj *o = pd[1];
    robj *key, *val = ((void*)0);

    if (o == ((void*)0)) {
        sds sdskey = dictGetKey(de);
        key = createStringObject(sdskey, sdslen(sdskey));
    } else if (o->type == OBJ_SET) {
        sds keysds = dictGetKey(de);
        key = createStringObject(keysds,sdslen(keysds));
    } else if (o->type == OBJ_HASH) {
        sds sdskey = dictGetKey(de);
        sds sdsval = dictGetVal(de);
        key = createStringObject(sdskey,sdslen(sdskey));
        val = createStringObject(sdsval,sdslen(sdsval));
    } else if (o->type == OBJ_ZSET) {
        sds sdskey = dictGetKey(de);
        key = createStringObject(sdskey,sdslen(sdskey));
        val = createStringObjectFromLongDouble(*(double*)dictGetVal(de),0);
    } else {
        serverPanic("Type not handled in SCAN callback.");
    }

    listAddNodeTail(keys, key);
    if (val) listAddNodeTail(keys, val);
}
