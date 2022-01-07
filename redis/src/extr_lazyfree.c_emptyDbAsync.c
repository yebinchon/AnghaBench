
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * expires; int * dict; } ;
typedef TYPE_1__ redisDb ;
typedef int dict ;


 int BIO_LAZY_FREE ;
 int atomicIncr (int ,int ) ;
 int bioCreateBackgroundJob (int ,int *,int *,int *) ;
 int dbDictType ;
 void* dictCreate (int *,int *) ;
 int dictSize (int *) ;
 int keyptrDictType ;
 int lazyfree_objects ;

void emptyDbAsync(redisDb *db) {
    dict *oldht1 = db->dict, *oldht2 = db->expires;
    db->dict = dictCreate(&dbDictType,((void*)0));
    db->expires = dictCreate(&keyptrDictType,((void*)0));
    atomicIncr(lazyfree_objects,dictSize(oldht1));
    bioCreateBackgroundJob(BIO_LAZY_FREE,((void*)0),oldht1,oldht2);
}
