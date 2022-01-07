
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int argc; int ** argv; } ;
typedef TYPE_1__ client ;
struct TYPE_7__ {int syntaxerr; } ;


 int ZSET_MIN ;
 int addReply (TYPE_1__*,int ) ;
 int genericZpopCommand (TYPE_1__*,int **,int,int ,int ,int *) ;
 TYPE_3__ shared ;

void zpopminCommand(client *c) {
    if (c->argc > 3) {
        addReply(c,shared.syntaxerr);
        return;
    }
    genericZpopCommand(c,&c->argv[1],1,ZSET_MIN,0,
        c->argc == 3 ? c->argv[2] : ((void*)0));
}
