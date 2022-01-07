
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ type; } ;
typedef TYPE_1__ robj ;
struct TYPE_14__ {int db; } ;
typedef TYPE_2__ client ;
struct TYPE_15__ {int wrongtypeerr; } ;


 scalar_t__ OBJ_HASH ;
 int addReply (TYPE_2__*,int ) ;
 TYPE_1__* createHashObject () ;
 int dbAdd (int ,TYPE_1__*,TYPE_1__*) ;
 TYPE_1__* lookupKeyWrite (int ,TYPE_1__*) ;
 TYPE_3__ shared ;

robj *hashTypeLookupWriteOrCreate(client *c, robj *key) {
    robj *o = lookupKeyWrite(c->db,key);
    if (o == ((void*)0)) {
        o = createHashObject();
        dbAdd(c->db,key,o);
    } else {
        if (o->type != OBJ_HASH) {
            addReply(c,shared.wrongtypeerr);
            return ((void*)0);
        }
    }
    return o;
}
