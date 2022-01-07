
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* value; } ;
typedef TYPE_1__ listNode ;
typedef int listIter ;
struct TYPE_9__ {int using; int usedby; } ;
typedef TYPE_2__ RedisModule ;


 int listDelNode (int ,TYPE_1__*) ;
 TYPE_1__* listNext (int *) ;
 int listRewind (int ,int *) ;
 TYPE_1__* listSearchKey (int ,TYPE_2__*) ;

int moduleUnregisterUsedAPI(RedisModule *module) {
    listIter li;
    listNode *ln;
    int count = 0;

    listRewind(module->using,&li);
    while((ln = listNext(&li))) {
        RedisModule *used = ln->value;
        listNode *ln = listSearchKey(used->usedby,module);
        if (ln) {
            listDelNode(module->using,ln);
            count++;
        }
    }
    return count;
}
