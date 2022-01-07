
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int robj ;
struct TYPE_6__ {int longval; int sz; scalar_t__ value; } ;
struct TYPE_7__ {TYPE_2__ entry; TYPE_1__* li; } ;
typedef TYPE_3__ listTypeEntry ;
struct TYPE_5__ {scalar_t__ encoding; } ;


 scalar_t__ OBJ_ENCODING_QUICKLIST ;
 int * createStringObject (char*,int ) ;
 int * createStringObjectFromLongLong (int ) ;
 int serverPanic (char*) ;

robj *listTypeGet(listTypeEntry *entry) {
    robj *value = ((void*)0);
    if (entry->li->encoding == OBJ_ENCODING_QUICKLIST) {
        if (entry->entry.value) {
            value = createStringObject((char *)entry->entry.value,
                                       entry->entry.sz);
        } else {
            value = createStringObjectFromLongLong(entry->entry.longval);
        }
    } else {
        serverPanic("Unknown list encoding");
    }
    return value;
}
