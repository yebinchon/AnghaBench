
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fsl_t ;


 int RedisModule_Free (int *) ;

void fsl_type_free(fsl_t *o) {
    RedisModule_Free(o);
}
