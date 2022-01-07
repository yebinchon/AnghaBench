
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {long long length; int * list; } ;
typedef TYPE_1__ fsl_t ;
typedef int RedisModuleIO ;


 int RedisModule_SaveSigned (int *,int ) ;
 int RedisModule_SaveUnsigned (int *,long long) ;

void fsl_rdb_save(RedisModuleIO *rdb, void *value) {
    fsl_t *fsl = value;
    RedisModule_SaveUnsigned(rdb,fsl->length);
    for (long long i = 0; i < fsl->length; i++)
        RedisModule_SaveSigned(rdb, fsl->list[i]);
}
