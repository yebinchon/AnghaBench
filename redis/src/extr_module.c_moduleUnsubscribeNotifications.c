
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
typedef TYPE_2__ RedisModuleKeyspaceSubscriber ;
typedef int RedisModule ;


 int listDelNode (int ,TYPE_1__*) ;
 TYPE_1__* listNext (int *) ;
 int listRewind (int ,int *) ;
 int moduleKeyspaceSubscribers ;
 int zfree (TYPE_2__*) ;

void moduleUnsubscribeNotifications(RedisModule *module) {
    listIter li;
    listNode *ln;
    listRewind(moduleKeyspaceSubscribers,&li);
    while((ln = listNext(&li))) {
        RedisModuleKeyspaceSubscriber *sub = ln->value;
        if (sub->module == module) {
            listDelNode(moduleKeyspaceSubscribers, ln);
            zfree(sub);
        }
    }
}
