
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int ptr; } ;
typedef TYPE_1__ robj ;
struct TYPE_11__ {int argc; int * cmd; TYPE_1__** argv; } ;
typedef TYPE_2__ client ;


 int decrRefCount (TYPE_1__*) ;
 int incrRefCount (TYPE_1__*) ;
 int * lookupCommandOrOriginal (int ) ;
 int serverAssertWithInfo (TYPE_2__*,int *,int ) ;
 TYPE_1__** zrealloc (TYPE_1__**,int) ;

void rewriteClientCommandArgument(client *c, int i, robj *newval) {
    robj *oldval;

    if (i >= c->argc) {
        c->argv = zrealloc(c->argv,sizeof(robj*)*(i+1));
        c->argc = i+1;
        c->argv[i] = ((void*)0);
    }
    oldval = c->argv[i];
    c->argv[i] = newval;
    incrRefCount(newval);
    if (oldval) decrRefCount(oldval);


    if (i == 0) {
        c->cmd = lookupCommandOrOriginal(c->argv[0]->ptr);
        serverAssertWithInfo(c,((void*)0),c->cmd != ((void*)0));
    }
}
