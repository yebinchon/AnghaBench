
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int robj ;
struct TYPE_8__ {int * argv; } ;
typedef TYPE_1__ client ;
struct TYPE_9__ {int emptyscan; } ;


 scalar_t__ C_ERR ;
 int OBJ_HASH ;
 scalar_t__ checkType (TYPE_1__*,int *,int ) ;
 int * lookupKeyReadOrReply (TYPE_1__*,int ,int ) ;
 scalar_t__ parseScanCursorOrReply (TYPE_1__*,int ,unsigned long*) ;
 int scanGenericCommand (TYPE_1__*,int *,unsigned long) ;
 TYPE_2__ shared ;

void hscanCommand(client *c) {
    robj *o;
    unsigned long cursor;

    if (parseScanCursorOrReply(c,c->argv[2],&cursor) == C_ERR) return;
    if ((o = lookupKeyReadOrReply(c,c->argv[1],shared.emptyscan)) == ((void*)0) ||
        checkType(c,o,OBJ_HASH)) return;
    scanGenericCommand(c,o,cursor);
}
