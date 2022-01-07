
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int sds ;
struct TYPE_12__ {int ptr; } ;
typedef TYPE_2__ robj ;
typedef int quicklist ;
struct TYPE_14__ {scalar_t__ quicklist; } ;
struct TYPE_13__ {TYPE_4__ entry; TYPE_1__* li; } ;
typedef TYPE_3__ listTypeEntry ;
struct TYPE_11__ {scalar_t__ encoding; } ;


 int LIST_HEAD ;
 int LIST_TAIL ;
 scalar_t__ OBJ_ENCODING_QUICKLIST ;
 int decrRefCount (TYPE_2__*) ;
 TYPE_2__* getDecodedObject (TYPE_2__*) ;
 int quicklistInsertAfter (int *,TYPE_4__*,int ,size_t) ;
 int quicklistInsertBefore (int *,TYPE_4__*,int ,size_t) ;
 size_t sdslen (int ) ;
 int serverPanic (char*) ;

void listTypeInsert(listTypeEntry *entry, robj *value, int where) {
    if (entry->li->encoding == OBJ_ENCODING_QUICKLIST) {
        value = getDecodedObject(value);
        sds str = value->ptr;
        size_t len = sdslen(str);
        if (where == LIST_TAIL) {
            quicklistInsertAfter((quicklist *)entry->entry.quicklist,
                                 &entry->entry, str, len);
        } else if (where == LIST_HEAD) {
            quicklistInsertBefore((quicklist *)entry->entry.quicklist,
                                  &entry->entry, str, len);
        }
        decrRefCount(value);
    } else {
        serverPanic("Unknown list encoding");
    }
}
