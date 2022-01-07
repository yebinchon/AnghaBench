
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ encoding; int ptr; } ;
typedef TYPE_1__ robj ;


 int LIST_HEAD ;
 scalar_t__ OBJ_ENCODING_QUICKLIST ;
 int QUICKLIST_HEAD ;
 int QUICKLIST_TAIL ;
 int decrRefCount (TYPE_1__*) ;
 TYPE_1__* getDecodedObject (TYPE_1__*) ;
 int quicklistPush (int ,int ,size_t,int) ;
 size_t sdslen (int ) ;
 int serverPanic (char*) ;

void listTypePush(robj *subject, robj *value, int where) {
    if (subject->encoding == OBJ_ENCODING_QUICKLIST) {
        int pos = (where == LIST_HEAD) ? QUICKLIST_HEAD : QUICKLIST_TAIL;
        value = getDecodedObject(value);
        size_t len = sdslen(value->ptr);
        quicklistPush(subject->ptr, value->ptr, len, pos);
        decrRefCount(value);
    } else {
        serverPanic("Unknown list encoding");
    }
}
