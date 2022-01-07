
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ encoding; int ptr; } ;
typedef TYPE_1__ robj ;
struct TYPE_8__ {scalar_t__ hash_max_ziplist_value; } ;


 int OBJ_ENCODING_HT ;
 scalar_t__ OBJ_ENCODING_ZIPLIST ;
 int hashTypeConvert (TYPE_1__*,int ) ;
 scalar_t__ sdsEncodedObject (TYPE_1__*) ;
 scalar_t__ sdslen (int ) ;
 TYPE_2__ server ;

void hashTypeTryConversion(robj *o, robj **argv, int start, int end) {
    int i;

    if (o->encoding != OBJ_ENCODING_ZIPLIST) return;

    for (i = start; i <= end; i++) {
        if (sdsEncodedObject(argv[i]) &&
            sdslen(argv[i]->ptr) > server.hash_max_ziplist_value)
        {
            hashTypeConvert(o, OBJ_ENCODING_HT);
            break;
        }
    }
}
