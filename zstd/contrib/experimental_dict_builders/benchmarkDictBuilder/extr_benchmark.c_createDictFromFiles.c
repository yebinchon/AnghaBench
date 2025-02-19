
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_32__ TYPE_9__ ;
typedef struct TYPE_31__ TYPE_8__ ;
typedef struct TYPE_30__ TYPE_7__ ;
typedef struct TYPE_29__ TYPE_6__ ;
typedef struct TYPE_28__ TYPE_5__ ;
typedef struct TYPE_27__ TYPE_4__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;
typedef struct TYPE_23__ TYPE_10__ ;


struct TYPE_28__ {int nbSamples; int samplesSizes; int srcBuffer; } ;
typedef TYPE_5__ sampleInfo ;
struct TYPE_29__ {void* dictBuffer; size_t dictSize; } ;
typedef TYPE_6__ dictInfo ;
struct TYPE_24__ {unsigned int notificationLevel; } ;
struct TYPE_30__ {TYPE_1__ zParams; } ;
typedef TYPE_7__ ZDICT_random_params_t ;
struct TYPE_26__ {unsigned int notificationLevel; } ;
struct TYPE_31__ {TYPE_3__ zParams; } ;
typedef TYPE_8__ ZDICT_legacy_params_t ;
struct TYPE_27__ {unsigned int notificationLevel; } ;
struct TYPE_32__ {int k; int d; TYPE_4__ zParams; } ;
typedef TYPE_9__ ZDICT_fastCover_params_t ;
struct TYPE_25__ {unsigned int notificationLevel; } ;
struct TYPE_23__ {int k; int d; TYPE_2__ zParams; } ;
typedef TYPE_10__ ZDICT_cover_params_t ;


 unsigned int DEFAULT_DISPLAYLEVEL ;
 int DISPLAYLEVEL (int,char*,int ) ;
 int EXM_THROW (int,char*) ;
 int ZDICT_getErrorName (size_t) ;
 scalar_t__ ZDICT_isError (size_t) ;
 size_t ZDICT_optimizeTrainFromBuffer_cover (void* const,unsigned int,int ,int ,int ,TYPE_10__*) ;
 size_t ZDICT_optimizeTrainFromBuffer_fastCover (void* const,unsigned int,int ,int ,int ,TYPE_9__*) ;
 size_t ZDICT_trainFromBuffer_cover (void* const,unsigned int,int ,int ,int ,TYPE_10__) ;
 size_t ZDICT_trainFromBuffer_fastCover (void* const,unsigned int,int ,int ,int ,TYPE_9__) ;
 size_t ZDICT_trainFromBuffer_legacy (void* const,unsigned int,int ,int ,int ,TYPE_8__) ;
 size_t ZDICT_trainFromBuffer_random (void* const,unsigned int,int ,int ,int ,TYPE_7__) ;
 int free (void* const) ;
 void* malloc (int) ;

dictInfo* createDictFromFiles(sampleInfo *info, unsigned maxDictSize,
                  ZDICT_random_params_t *randomParams, ZDICT_cover_params_t *coverParams,
                  ZDICT_legacy_params_t *legacyParams, ZDICT_fastCover_params_t *fastParams) {
    unsigned const displayLevel = randomParams ? randomParams->zParams.notificationLevel :
                                  coverParams ? coverParams->zParams.notificationLevel :
                                  legacyParams ? legacyParams->zParams.notificationLevel :
                                  fastParams ? fastParams->zParams.notificationLevel :
                                  DEFAULT_DISPLAYLEVEL;
    void* const dictBuffer = malloc(maxDictSize);

    dictInfo* dInfo = ((void*)0);


    if (!dictBuffer)
        EXM_THROW(12, "not enough memory for trainFromFiles");

    { size_t dictSize;
        if(randomParams) {
          dictSize = ZDICT_trainFromBuffer_random(dictBuffer, maxDictSize, info->srcBuffer,
                                               info->samplesSizes, info->nbSamples, *randomParams);
        }else if(coverParams) {

          if (!coverParams->d || !coverParams->k){
            dictSize = ZDICT_optimizeTrainFromBuffer_cover(dictBuffer, maxDictSize, info->srcBuffer,
                                                  info->samplesSizes, info->nbSamples, coverParams);
          } else {
            dictSize = ZDICT_trainFromBuffer_cover(dictBuffer, maxDictSize, info->srcBuffer,
                                                  info->samplesSizes, info->nbSamples, *coverParams);
          }
        } else if(legacyParams) {
          dictSize = ZDICT_trainFromBuffer_legacy(dictBuffer, maxDictSize, info->srcBuffer,
                                               info->samplesSizes, info->nbSamples, *legacyParams);
        } else if(fastParams) {

          if (!fastParams->d || !fastParams->k) {
            dictSize = ZDICT_optimizeTrainFromBuffer_fastCover(dictBuffer, maxDictSize, info->srcBuffer,
                                                  info->samplesSizes, info->nbSamples, fastParams);
          } else {
            dictSize = ZDICT_trainFromBuffer_fastCover(dictBuffer, maxDictSize, info->srcBuffer,
                                                  info->samplesSizes, info->nbSamples, *fastParams);
          }
        } else {
          dictSize = 0;
        }
        if (ZDICT_isError(dictSize)) {
            DISPLAYLEVEL(1, "dictionary training failed : %s \n", ZDICT_getErrorName(dictSize));
            free(dictBuffer);
            return dInfo;
        }
        dInfo = (dictInfo *)malloc(sizeof(dictInfo));
        dInfo->dictBuffer = dictBuffer;
        dInfo->dictSize = dictSize;
    }
    return dInfo;
}
