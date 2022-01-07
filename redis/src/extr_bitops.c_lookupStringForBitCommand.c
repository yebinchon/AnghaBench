
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int ptr; } ;
typedef TYPE_1__ robj ;
struct TYPE_13__ {int * argv; int db; } ;
typedef TYPE_2__ client ;


 int OBJ_STRING ;
 scalar_t__ checkType (TYPE_2__*,TYPE_1__*,int ) ;
 TYPE_1__* createObject (int ,int ) ;
 int dbAdd (int ,int ,TYPE_1__*) ;
 TYPE_1__* dbUnshareStringValue (int ,int ,TYPE_1__*) ;
 TYPE_1__* lookupKeyWrite (int ,int ) ;
 int sdsgrowzero (int ,size_t) ;
 int sdsnewlen (int *,size_t) ;

robj *lookupStringForBitCommand(client *c, size_t maxbit) {
    size_t byte = maxbit >> 3;
    robj *o = lookupKeyWrite(c->db,c->argv[1]);

    if (o == ((void*)0)) {
        o = createObject(OBJ_STRING,sdsnewlen(((void*)0), byte+1));
        dbAdd(c->db,c->argv[1],o);
    } else {
        if (checkType(c,o,OBJ_STRING)) return ((void*)0);
        o = dbUnshareStringValue(c->db,c->argv[1],o);
        o->ptr = sdsgrowzero(o->ptr,byte+1);
    }
    return o;
}
