
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * argv; scalar_t__ argc; } ;
typedef TYPE_1__ client ;


 int SET_OP_DIFF ;
 int sunionDiffGenericCommand (TYPE_1__*,int *,scalar_t__,int ,int ) ;

void sdiffstoreCommand(client *c) {
    sunionDiffGenericCommand(c,c->argv+2,c->argc-2,c->argv[1],SET_OP_DIFF);
}
