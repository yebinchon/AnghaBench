
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef int * sds ;
typedef int robj ;
struct TYPE_4__ {int dict; } ;
typedef TYPE_1__ redisDb ;
typedef int dictIterator ;
typedef int dictEntry ;
typedef int aux ;
struct TYPE_5__ {int dbnum; TYPE_1__* db; } ;


 int * createStringObject (int *,int) ;
 int decrRefCount (int *) ;
 int * dictGetKey (int *) ;
 int * dictGetSafeIterator (int ) ;
 int * dictGetVal (int *) ;
 int * dictNext (int *) ;
 int dictReleaseIterator (int *) ;
 scalar_t__ dictSize (int ) ;
 int htonl (int) ;
 int memset (unsigned char*,int ,int) ;
 int mixDigest (unsigned char*,int *,int) ;
 int sdslen (int *) ;
 TYPE_3__ server ;
 int xorDigest (unsigned char*,unsigned char*,int) ;
 int xorObjectDigest (TYPE_1__*,int *,unsigned char*,int *) ;

void computeDatasetDigest(unsigned char *final) {
    unsigned char digest[20];
    dictIterator *di = ((void*)0);
    dictEntry *de;
    int j;
    uint32_t aux;

    memset(final,0,20);

    for (j = 0; j < server.dbnum; j++) {
        redisDb *db = server.db+j;

        if (dictSize(db->dict) == 0) continue;
        di = dictGetSafeIterator(db->dict);



        aux = htonl(j);
        mixDigest(final,&aux,sizeof(aux));


        while((de = dictNext(di)) != ((void*)0)) {
            sds key;
            robj *keyobj, *o;

            memset(digest,0,20);
            key = dictGetKey(de);
            keyobj = createStringObject(key,sdslen(key));

            mixDigest(digest,key,sdslen(key));

            o = dictGetVal(de);
            xorObjectDigest(db,keyobj,digest,o);


            xorDigest(final,digest,20);
            decrRefCount(keyobj);
        }
        dictReleaseIterator(di);
    }
}
