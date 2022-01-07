
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int robj ;
struct TYPE_8__ {TYPE_4__** argv; } ;
typedef TYPE_1__ client ;
struct TYPE_10__ {int ptr; } ;
struct TYPE_9__ {int czero; int cone; } ;


 int OBJ_HASH ;
 int addReply (TYPE_1__*,int ) ;
 scalar_t__ checkType (TYPE_1__*,int *,int ) ;
 scalar_t__ hashTypeExists (int *,int ) ;
 int * lookupKeyReadOrReply (TYPE_1__*,TYPE_4__*,int ) ;
 TYPE_2__ shared ;

void hexistsCommand(client *c) {
    robj *o;
    if ((o = lookupKeyReadOrReply(c,c->argv[1],shared.czero)) == ((void*)0) ||
        checkType(c,o,OBJ_HASH)) return;

    addReply(c, hashTypeExists(o,c->argv[2]->ptr) ? shared.cone : shared.czero);
}
