
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {void* expires; void* dict; } ;
typedef TYPE_1__ redisDb ;
struct TYPE_6__ {int dbnum; TYPE_1__* db; } ;


 int dbDictType ;
 void* dictCreate (int *,int *) ;
 int keyptrDictType ;
 TYPE_3__ server ;
 TYPE_1__* zmalloc (int) ;

redisDb *disklessLoadMakeBackups(void) {
    redisDb *backups = zmalloc(sizeof(redisDb)*server.dbnum);
    for (int i=0; i<server.dbnum; i++) {
        backups[i] = server.db[i];
        server.db[i].dict = dictCreate(&dbDictType,((void*)0));
        server.db[i].expires = dictCreate(&keyptrDictType,((void*)0));
    }
    return backups;
}
