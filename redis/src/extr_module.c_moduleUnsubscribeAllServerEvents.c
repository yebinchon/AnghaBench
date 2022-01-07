
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* value; } ;
typedef TYPE_1__ listNode ;
typedef int listIter ;
struct TYPE_7__ {int * module; } ;
typedef TYPE_2__ RedisModuleEventListener ;
typedef int RedisModule ;


 int RedisModule_EventListeners ;
 int listDelNode (int ,TYPE_1__*) ;
 TYPE_1__* listNext (int *) ;
 int listRewind (int ,int *) ;
 int zfree (TYPE_2__*) ;

void moduleUnsubscribeAllServerEvents(RedisModule *module) {
    RedisModuleEventListener *el;
    listIter li;
    listNode *ln;
    listRewind(RedisModule_EventListeners,&li);

    while((ln = listNext(&li))) {
        el = ln->value;
        if (el->module == module) {
            listDelNode(RedisModule_EventListeners,ln);
            zfree(el);
        }
    }
}
