
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * argv; } ;
typedef TYPE_1__ client ;


 scalar_t__ C_ERR ;
 scalar_t__ parseScanCursorOrReply (TYPE_1__*,int ,unsigned long*) ;
 int scanGenericCommand (TYPE_1__*,int *,unsigned long) ;

void scanCommand(client *c) {
    unsigned long cursor;
    if (parseScanCursorOrReply(c,c->argv[1],&cursor) == C_ERR) return;
    scanGenericCommand(c,((void*)0),cursor);
}
