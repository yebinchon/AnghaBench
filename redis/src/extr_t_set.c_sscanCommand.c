
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int robj ;
struct TYPE_8__ {int * argv; } ;
typedef TYPE_1__ client ;
struct TYPE_9__ {int emptyscan; } ;


 scalar_t__ C_ERR ;
 int OBJ_SET ;
 scalar_t__ checkType (TYPE_1__*,int *,int ) ;
 int * lookupKeyReadOrReply (TYPE_1__*,int ,int ) ;
 scalar_t__ parseScanCursorOrReply (TYPE_1__*,int ,unsigned long*) ;
 int scanGenericCommand (TYPE_1__*,int *,unsigned long) ;
 TYPE_3__ shared ;

void sscanCommand(client *c) {
    robj *set;
    unsigned long cursor;

    if (parseScanCursorOrReply(c,c->argv[2],&cursor) == C_ERR) return;
    if ((set = lookupKeyReadOrReply(c,c->argv[1],shared.emptyscan)) == ((void*)0) ||
        checkType(c,set,OBJ_SET)) return;
    scanGenericCommand(c,set,cursor);
}
