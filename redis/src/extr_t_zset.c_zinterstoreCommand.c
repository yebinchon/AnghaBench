
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * argv; } ;
typedef TYPE_1__ client ;


 int SET_OP_INTER ;
 int zunionInterGenericCommand (TYPE_1__*,int ,int ) ;

void zinterstoreCommand(client *c) {
    zunionInterGenericCommand(c,c->argv[1], SET_OP_INTER);
}
