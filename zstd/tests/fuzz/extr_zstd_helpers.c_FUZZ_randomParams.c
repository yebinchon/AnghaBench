
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fParams; int cParams; } ;
typedef TYPE_1__ ZSTD_parameters ;
typedef int FUZZ_dataProducer_t ;


 int FUZZ_randomCParams (size_t,int *) ;
 int FUZZ_randomFParams (int *) ;

ZSTD_parameters FUZZ_randomParams(size_t srcSize, FUZZ_dataProducer_t *producer)
{
    ZSTD_parameters params;
    params.cParams = FUZZ_randomCParams(srcSize, producer);
    params.fParams = FUZZ_randomFParams(producer);
    return params;
}
