
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct RedisModule {int (* info_cb ) (TYPE_1__*,int) ;} ;
typedef int sds ;
typedef int dictIterator ;
typedef int dictEntry ;
struct TYPE_4__ {int member_3; int sections; int info; scalar_t__ in_dict_field; int member_4; int member_2; int member_1; struct RedisModule* member_0; } ;
typedef TYPE_1__ RedisModuleInfoCtx ;


 int RM_InfoEndDictField (TYPE_1__*) ;
 int * dictGetIterator (int ) ;
 struct RedisModule* dictGetVal (int *) ;
 int * dictNext (int *) ;
 int dictReleaseIterator (int *) ;
 int modules ;
 int stub1 (TYPE_1__*,int) ;

sds modulesCollectInfo(sds info, sds section, int for_crash_report, int sections) {
    dictIterator *di = dictGetIterator(modules);
    dictEntry *de;

    while ((de = dictNext(di)) != ((void*)0)) {
        struct RedisModule *module = dictGetVal(de);
        if (!module->info_cb)
            continue;
        RedisModuleInfoCtx info_ctx = {module, section, info, sections, 0};
        module->info_cb(&info_ctx, for_crash_report);

        if (info_ctx.in_dict_field)
            RM_InfoEndDictField(&info_ctx);
        info = info_ctx.info;
        sections = info_ctx.sections;
    }
    dictReleaseIterator(di);
    return info;
}
