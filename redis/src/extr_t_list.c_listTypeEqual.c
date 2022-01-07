
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int ptr; } ;
typedef TYPE_3__ robj ;
struct TYPE_10__ {int zi; } ;
struct TYPE_12__ {TYPE_2__ entry; TYPE_1__* li; } ;
typedef TYPE_4__ listTypeEntry ;
struct TYPE_9__ {scalar_t__ encoding; } ;


 scalar_t__ OBJ_ENCODING_QUICKLIST ;
 int quicklistCompare (int ,int ,int ) ;
 int sdsEncodedObject (TYPE_3__*) ;
 int sdslen (int ) ;
 int serverAssertWithInfo (int *,TYPE_3__*,int ) ;
 int serverPanic (char*) ;

int listTypeEqual(listTypeEntry *entry, robj *o) {
    if (entry->li->encoding == OBJ_ENCODING_QUICKLIST) {
        serverAssertWithInfo(((void*)0),o,sdsEncodedObject(o));
        return quicklistCompare(entry->entry.zi,o->ptr,sdslen(o->ptr));
    } else {
        serverPanic("Unknown list encoding");
    }
}
