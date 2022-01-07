
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {TYPE_5__* value; } ;
typedef TYPE_2__ listNode ;
typedef int listIter ;
struct TYPE_11__ {int argc; int argv; } ;
typedef TYPE_3__ client ;
struct TYPE_13__ {int flags; int (* callback ) (TYPE_4__*) ;TYPE_1__* module; } ;
struct TYPE_12__ {int argc; int argv; } ;
struct TYPE_9__ {scalar_t__ in_call; } ;
typedef TYPE_4__ RedisModuleCommandFilterCtx ;
typedef TYPE_5__ RedisModuleCommandFilter ;


 int REDISMODULE_CMDFILTER_NOSELF ;
 scalar_t__ listLength (int ) ;
 TYPE_2__* listNext (int *) ;
 int listRewind (int ,int *) ;
 int moduleCommandFilters ;
 int stub1 (TYPE_4__*) ;

void moduleCallCommandFilters(client *c) {
    if (listLength(moduleCommandFilters) == 0) return;

    listIter li;
    listNode *ln;
    listRewind(moduleCommandFilters,&li);

    RedisModuleCommandFilterCtx filter = {
        .argv = c->argv,
        .argc = c->argc
    };

    while((ln = listNext(&li))) {
        RedisModuleCommandFilter *f = ln->value;




        if ((f->flags & REDISMODULE_CMDFILTER_NOSELF) && f->module->in_call) continue;


        f->callback(&filter);
    }

    c->argv = filter.argv;
    c->argc = filter.argc;
}
