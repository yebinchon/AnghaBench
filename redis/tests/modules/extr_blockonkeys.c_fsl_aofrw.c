
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {long long length; int * list; } ;
typedef TYPE_1__ fsl_t ;
typedef int RedisModuleString ;
typedef int RedisModuleIO ;


 int RedisModule_EmitAOF (int *,char*,char*,int *,int ) ;

void fsl_aofrw(RedisModuleIO *aof, RedisModuleString *key, void *value) {
    fsl_t *fsl = value;
    for (long long i = 0; i < fsl->length; i++)
        RedisModule_EmitAOF(aof, "FSL.PUSH","sl", key, fsl->list[i]);
}
