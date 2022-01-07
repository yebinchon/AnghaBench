
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * argv; scalar_t__ argc; } ;
typedef TYPE_1__ client ;


 int sinterGenericCommand (TYPE_1__*,int *,scalar_t__,int ) ;

void sinterstoreCommand(client *c) {
    sinterGenericCommand(c,c->argv+2,c->argc-2,c->argv[1]);
}
