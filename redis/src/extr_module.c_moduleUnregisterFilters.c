
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int * value; } ;
typedef TYPE_1__ listNode ;
typedef int listIter ;
struct TYPE_8__ {int filters; } ;
typedef int RedisModuleCommandFilter ;
typedef TYPE_2__ RedisModule ;


 int listDelNode (int ,TYPE_1__*) ;
 TYPE_1__* listNext (int *) ;
 int listRewind (int ,int *) ;
 TYPE_1__* listSearchKey (int ,int *) ;
 int moduleCommandFilters ;
 int zfree (int *) ;

int moduleUnregisterFilters(RedisModule *module) {
    listIter li;
    listNode *ln;
    int count = 0;

    listRewind(module->filters,&li);
    while((ln = listNext(&li))) {
        RedisModuleCommandFilter *filter = ln->value;
        listNode *ln = listSearchKey(moduleCommandFilters,filter);
        if (ln) {
            listDelNode(moduleCommandFilters,ln);
            count++;
        }
        zfree(filter);
    }
    return count;
}
