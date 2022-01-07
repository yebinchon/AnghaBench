
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int argc; struct TYPE_8__* argv; } ;
typedef TYPE_2__ multiCmd ;
struct TYPE_7__ {int count; TYPE_2__* commands; } ;
struct TYPE_9__ {TYPE_1__ mstate; } ;
typedef TYPE_3__ client ;


 int decrRefCount (TYPE_2__) ;
 int zfree (TYPE_2__*) ;

void freeClientMultiState(client *c) {
    int j;

    for (j = 0; j < c->mstate.count; j++) {
        int i;
        multiCmd *mc = c->mstate.commands+j;

        for (i = 0; i < mc->argc; i++)
            decrRefCount(mc->argv[i]);
        zfree(mc->argv);
    }
    zfree(c->mstate.commands);
}
