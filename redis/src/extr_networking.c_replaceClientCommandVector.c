
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int ptr; } ;
typedef TYPE_1__ robj ;
struct TYPE_9__ {int argc; int * cmd; TYPE_1__** argv; } ;
typedef TYPE_2__ client ;


 int freeClientArgv (TYPE_2__*) ;
 int * lookupCommandOrOriginal (int ) ;
 int serverAssertWithInfo (TYPE_2__*,int *,int ) ;
 int zfree (TYPE_1__**) ;

void replaceClientCommandVector(client *c, int argc, robj **argv) {
    freeClientArgv(c);
    zfree(c->argv);
    c->argv = argv;
    c->argc = argc;
    c->cmd = lookupCommandOrOriginal(c->argv[0]->ptr);
    serverAssertWithInfo(c,((void*)0),c->cmd != ((void*)0));
}
