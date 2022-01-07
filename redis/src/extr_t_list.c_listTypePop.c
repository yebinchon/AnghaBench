
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ encoding; int ptr; } ;
typedef TYPE_1__ robj ;


 int LIST_HEAD ;
 scalar_t__ OBJ_ENCODING_QUICKLIST ;
 int QUICKLIST_HEAD ;
 int QUICKLIST_TAIL ;
 TYPE_1__* createStringObjectFromLongLong (long long) ;
 int listPopSaver ;
 scalar_t__ quicklistPopCustom (int ,int,unsigned char**,int *,long long*,int ) ;
 int serverPanic (char*) ;

robj *listTypePop(robj *subject, int where) {
    long long vlong;
    robj *value = ((void*)0);

    int ql_where = where == LIST_HEAD ? QUICKLIST_HEAD : QUICKLIST_TAIL;
    if (subject->encoding == OBJ_ENCODING_QUICKLIST) {
        if (quicklistPopCustom(subject->ptr, ql_where, (unsigned char **)&value,
                               ((void*)0), &vlong, listPopSaver)) {
            if (!value)
                value = createStringObjectFromLongLong(vlong);
        }
    } else {
        serverPanic("Unknown list encoding");
    }
    return value;
}
