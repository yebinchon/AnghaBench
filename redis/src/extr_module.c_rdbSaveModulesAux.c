
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct RedisModule {int types; } ;
typedef int ssize_t ;
typedef int rio ;
struct TYPE_5__ {int aux_save_triggers; int aux_save; } ;
typedef TYPE_1__ moduleType ;
struct TYPE_6__ {TYPE_1__* value; } ;
typedef TYPE_2__ listNode ;
typedef int listIter ;
typedef int dictIterator ;
typedef int dictEntry ;


 int * dictGetIterator (int ) ;
 struct RedisModule* dictGetVal (int *) ;
 int * dictNext (int *) ;
 int dictReleaseIterator (int *) ;
 TYPE_2__* listNext (int *) ;
 int listRewind (int ,int *) ;
 int modules ;
 int rdbSaveSingleModuleAux (int *,int,TYPE_1__*) ;

ssize_t rdbSaveModulesAux(rio *rdb, int when) {
    size_t total_written = 0;
    dictIterator *di = dictGetIterator(modules);
    dictEntry *de;

    while ((de = dictNext(di)) != ((void*)0)) {
        struct RedisModule *module = dictGetVal(de);
        listIter li;
        listNode *ln;

        listRewind(module->types,&li);
        while((ln = listNext(&li))) {
            moduleType *mt = ln->value;
            if (!mt->aux_save || !(mt->aux_save_triggers & when))
                continue;
            ssize_t ret = rdbSaveSingleModuleAux(rdb, when, mt);
            if (ret==-1) {
                dictReleaseIterator(di);
                return -1;
            }
            total_written += ret;
        }
    }

    dictReleaseIterator(di);
    return total_written;
}
