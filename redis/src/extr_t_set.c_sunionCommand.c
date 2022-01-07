
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ argc; scalar_t__ argv; } ;
typedef TYPE_1__ client ;


 int SET_OP_UNION ;
 int sunionDiffGenericCommand (TYPE_1__*,scalar_t__,scalar_t__,int *,int ) ;

void sunionCommand(client *c) {
    sunionDiffGenericCommand(c,c->argv+1,c->argc-1,((void*)0),SET_OP_UNION);
}
