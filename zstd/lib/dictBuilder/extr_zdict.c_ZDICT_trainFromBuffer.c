
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int params ;
struct TYPE_5__ {int compressionLevel; int notificationLevel; } ;
struct TYPE_6__ {int d; int steps; TYPE_1__ zParams; } ;
typedef TYPE_2__ ZDICT_fastCover_params_t ;


 int DEBUGLEVEL ;
 int DEBUGLOG (int,char*) ;
 size_t ZDICT_optimizeTrainFromBuffer_fastCover (void*,size_t,void const*,size_t const*,unsigned int,TYPE_2__*) ;
 int memset (TYPE_2__*,int ,int) ;

size_t ZDICT_trainFromBuffer(void* dictBuffer, size_t dictBufferCapacity,
                             const void* samplesBuffer, const size_t* samplesSizes, unsigned nbSamples)
{
    ZDICT_fastCover_params_t params;
    DEBUGLOG(3, "ZDICT_trainFromBuffer");
    memset(&params, 0, sizeof(params));
    params.d = 8;
    params.steps = 4;

    params.zParams.compressionLevel = 3;



    return ZDICT_optimizeTrainFromBuffer_fastCover(dictBuffer, dictBufferCapacity,
                                               samplesBuffer, samplesSizes, nbSamples,
                                               &params);
}
