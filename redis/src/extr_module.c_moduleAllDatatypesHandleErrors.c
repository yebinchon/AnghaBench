
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RedisModule {int options; int types; } ;
typedef int dictIterator ;
typedef int dictEntry ;


 int REDISMODULE_OPTIONS_HANDLE_IO_ERRORS ;
 int * dictGetIterator (int ) ;
 struct RedisModule* dictGetVal (int *) ;
 int * dictNext (int *) ;
 int dictReleaseIterator (int *) ;
 scalar_t__ listLength (int ) ;
 int modules ;

int moduleAllDatatypesHandleErrors() {
    dictIterator *di = dictGetIterator(modules);
    dictEntry *de;

    while ((de = dictNext(di)) != ((void*)0)) {
        struct RedisModule *module = dictGetVal(de);
        if (listLength(module->types) &&
            !(module->options & REDISMODULE_OPTIONS_HANDLE_IO_ERRORS))
        {
            dictReleaseIterator(di);
            return 0;
        }
    }
    dictReleaseIterator(di);
    return 1;
}
