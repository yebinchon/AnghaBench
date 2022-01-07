
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RedisModule {int ver; } ;
typedef int sds ;
typedef int dictIterator ;
typedef int dictEntry ;
typedef int client ;


 int addReplyArrayLen (int *,int ) ;
 int addReplyBulkCBuffer (int *,int ,int ) ;
 int addReplyBulkCString (int *,char*) ;
 int addReplyLongLong (int *,int ) ;
 int addReplyMapLen (int *,int) ;
 int * dictGetIterator (int ) ;
 int dictGetKey (int *) ;
 struct RedisModule* dictGetVal (int *) ;
 int * dictNext (int *) ;
 int dictReleaseIterator (int *) ;
 int dictSize (int ) ;
 int modules ;
 int sdslen (int ) ;

void addReplyLoadedModules(client *c) {
    dictIterator *di = dictGetIterator(modules);
    dictEntry *de;

    addReplyArrayLen(c,dictSize(modules));
    while ((de = dictNext(di)) != ((void*)0)) {
        sds name = dictGetKey(de);
        struct RedisModule *module = dictGetVal(de);
        addReplyMapLen(c,2);
        addReplyBulkCString(c,"name");
        addReplyBulkCBuffer(c,name,sdslen(name));
        addReplyBulkCString(c,"ver");
        addReplyLongLong(c,module->ver);
    }
    dictReleaseIterator(di);
}
