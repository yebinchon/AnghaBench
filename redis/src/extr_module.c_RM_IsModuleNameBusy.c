
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sds ;
typedef int dictEntry ;


 int * dictFind (int ,int ) ;
 int modules ;
 int sdsfree (int ) ;
 int sdsnew (char const*) ;

int RM_IsModuleNameBusy(const char *name) {
    sds modulename = sdsnew(name);
    dictEntry *de = dictFind(modules,modulename);
    sdsfree(modulename);
    return de != ((void*)0);
}
