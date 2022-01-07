
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int sds ;
struct TYPE_4__ {int encoding; int ptr; } ;
typedef TYPE_1__ robj ;
typedef int hashTypeIterator ;


 scalar_t__ C_ERR ;
 int DICT_OK ;
 int LL_WARNING ;
 int OBJ_ENCODING_HT ;
 int OBJ_ENCODING_ZIPLIST ;
 int OBJ_HASH_KEY ;
 int OBJ_HASH_VALUE ;
 int dict ;
 int dictAdd (int,int ,int ) ;
 int dictCreate (int *,int *) ;
 int hashDictType ;
 int hashTypeCurrentObjectNewSds (int *,int ) ;
 int * hashTypeInitIterator (TYPE_1__*) ;
 scalar_t__ hashTypeNext (int *) ;
 int hashTypeReleaseIterator (int *) ;
 int serverAssert (int) ;
 int serverLogHexDump (int ,char*,int ,int ) ;
 int serverPanic (char*) ;
 int zfree (int ) ;
 int ziplistBlobLen (int ) ;

void hashTypeConvertZiplist(robj *o, int enc) {
    serverAssert(o->encoding == OBJ_ENCODING_ZIPLIST);

    if (enc == OBJ_ENCODING_ZIPLIST) {


    } else if (enc == OBJ_ENCODING_HT) {
        hashTypeIterator *hi;
        dict *dict;
        int ret;

        hi = hashTypeInitIterator(o);
        dict = dictCreate(&hashDictType, ((void*)0));

        while (hashTypeNext(hi) != C_ERR) {
            sds key, value;

            key = hashTypeCurrentObjectNewSds(hi,OBJ_HASH_KEY);
            value = hashTypeCurrentObjectNewSds(hi,OBJ_HASH_VALUE);
            ret = dictAdd(dict, key, value);
            if (ret != DICT_OK) {
                serverLogHexDump(LL_WARNING,"ziplist with dup elements dump",
                    o->ptr,ziplistBlobLen(o->ptr));
                serverPanic("Ziplist corruption detected");
            }
        }
        hashTypeReleaseIterator(hi);
        zfree(o->ptr);
        o->encoding = OBJ_ENCODING_HT;
        o->ptr = dict;
    } else {
        serverPanic("Unknown hash encoding");
    }
}
