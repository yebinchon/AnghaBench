
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* noDictIDFlag; void* checksumFlag; void* contentSizeFlag; } ;
typedef TYPE_1__ ZSTD_frameParameters ;
typedef int FUZZ_dataProducer_t ;


 void* FUZZ_dataProducer_uint32Range (int *,int ,int) ;

ZSTD_frameParameters FUZZ_randomFParams(FUZZ_dataProducer_t *producer)
{

    ZSTD_frameParameters fParams;
    fParams.contentSizeFlag = FUZZ_dataProducer_uint32Range(producer, 0, 1);
    fParams.checksumFlag = FUZZ_dataProducer_uint32Range(producer, 0, 1);
    fParams.noDictIDFlag = FUZZ_dataProducer_uint32Range(producer, 0, 1);
    return fParams;
}
