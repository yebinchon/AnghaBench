
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int dict; int zsl; } ;
typedef TYPE_1__ zset ;
typedef int sds ;
struct TYPE_8__ {scalar_t__ encoding; TYPE_1__* ptr; } ;
typedef TYPE_2__ robj ;
typedef int dictEntry ;


 scalar_t__ OBJ_ENCODING_SKIPLIST ;
 scalar_t__ OBJ_ENCODING_ZIPLIST ;
 int dictFreeUnlinkedEntry (int ,int *) ;
 scalar_t__ dictGetVal (int *) ;
 int dictResize (int ) ;
 int * dictUnlink (int ,int ) ;
 scalar_t__ htNeedsResize (int ) ;
 int serverAssert (int) ;
 int serverPanic (char*) ;
 int zslDelete (int ,double,int ,int *) ;
 TYPE_1__* zzlDelete (TYPE_1__*,unsigned char*) ;
 unsigned char* zzlFind (TYPE_1__*,int ,int *) ;

int zsetDel(robj *zobj, sds ele) {
    if (zobj->encoding == OBJ_ENCODING_ZIPLIST) {
        unsigned char *eptr;

        if ((eptr = zzlFind(zobj->ptr,ele,((void*)0))) != ((void*)0)) {
            zobj->ptr = zzlDelete(zobj->ptr,eptr);
            return 1;
        }
    } else if (zobj->encoding == OBJ_ENCODING_SKIPLIST) {
        zset *zs = zobj->ptr;
        dictEntry *de;
        double score;

        de = dictUnlink(zs->dict,ele);
        if (de != ((void*)0)) {

            score = *(double*)dictGetVal(de);






            dictFreeUnlinkedEntry(zs->dict,de);


            int retval = zslDelete(zs->zsl,score,ele,((void*)0));
            serverAssert(retval);

            if (htNeedsResize(zs->dict)) dictResize(zs->dict);
            return 1;
        }
    } else {
        serverPanic("Unknown sorted set encoding");
    }
    return 0;
}
