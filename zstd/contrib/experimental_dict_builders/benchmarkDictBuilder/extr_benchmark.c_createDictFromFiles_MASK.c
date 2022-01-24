#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_32__   TYPE_9__ ;
typedef  struct TYPE_31__   TYPE_8__ ;
typedef  struct TYPE_30__   TYPE_7__ ;
typedef  struct TYPE_29__   TYPE_6__ ;
typedef  struct TYPE_28__   TYPE_5__ ;
typedef  struct TYPE_27__   TYPE_4__ ;
typedef  struct TYPE_26__   TYPE_3__ ;
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_1__ ;
typedef  struct TYPE_23__   TYPE_10__ ;

/* Type definitions */
struct TYPE_28__ {int /*<<< orphan*/  nbSamples; int /*<<< orphan*/  samplesSizes; int /*<<< orphan*/  srcBuffer; } ;
typedef  TYPE_5__ sampleInfo ;
struct TYPE_29__ {void* dictBuffer; size_t dictSize; } ;
typedef  TYPE_6__ dictInfo ;
struct TYPE_24__ {unsigned int notificationLevel; } ;
struct TYPE_30__ {TYPE_1__ zParams; } ;
typedef  TYPE_7__ ZDICT_random_params_t ;
struct TYPE_26__ {unsigned int notificationLevel; } ;
struct TYPE_31__ {TYPE_3__ zParams; } ;
typedef  TYPE_8__ ZDICT_legacy_params_t ;
struct TYPE_27__ {unsigned int notificationLevel; } ;
struct TYPE_32__ {int /*<<< orphan*/  k; int /*<<< orphan*/  d; TYPE_4__ zParams; } ;
typedef  TYPE_9__ ZDICT_fastCover_params_t ;
struct TYPE_25__ {unsigned int notificationLevel; } ;
struct TYPE_23__ {int /*<<< orphan*/  k; int /*<<< orphan*/  d; TYPE_2__ zParams; } ;
typedef  TYPE_10__ ZDICT_cover_params_t ;

/* Variables and functions */
 unsigned int DEFAULT_DISPLAYLEVEL ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (size_t) ; 
 scalar_t__ FUNC3 (size_t) ; 
 size_t FUNC4 (void* const,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_10__*) ; 
 size_t FUNC5 (void* const,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_9__*) ; 
 size_t FUNC6 (void* const,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_10__) ; 
 size_t FUNC7 (void* const,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_9__) ; 
 size_t FUNC8 (void* const,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_8__) ; 
 size_t FUNC9 (void* const,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_7__) ; 
 int /*<<< orphan*/  FUNC10 (void* const) ; 
 void* FUNC11 (int) ; 

dictInfo* FUNC12(sampleInfo *info, unsigned maxDictSize,
                  ZDICT_random_params_t *randomParams, ZDICT_cover_params_t *coverParams,
                  ZDICT_legacy_params_t *legacyParams, ZDICT_fastCover_params_t *fastParams) {
    unsigned const displayLevel = randomParams ? randomParams->zParams.notificationLevel :
                                  coverParams ? coverParams->zParams.notificationLevel :
                                  legacyParams ? legacyParams->zParams.notificationLevel :
                                  fastParams ? fastParams->zParams.notificationLevel :
                                  DEFAULT_DISPLAYLEVEL;   /* no dict */
    void* const dictBuffer = FUNC11(maxDictSize);

    dictInfo* dInfo = NULL;

    /* Checks */
    if (!dictBuffer)
        FUNC1(12, "not enough memory for trainFromFiles");   /* should not happen */

    {   size_t dictSize;
        if(randomParams) {
          dictSize = FUNC9(dictBuffer, maxDictSize, info->srcBuffer,
                                               info->samplesSizes, info->nbSamples, *randomParams);
        }else if(coverParams) {
          /* Run the optimize version if either k or d is not provided */
          if (!coverParams->d || !coverParams->k){
            dictSize = FUNC4(dictBuffer, maxDictSize, info->srcBuffer,
                                                  info->samplesSizes, info->nbSamples, coverParams);
          } else {
            dictSize = FUNC6(dictBuffer, maxDictSize, info->srcBuffer,
                                                  info->samplesSizes, info->nbSamples, *coverParams);
          }
        } else if(legacyParams) {
          dictSize = FUNC8(dictBuffer, maxDictSize, info->srcBuffer,
                                               info->samplesSizes, info->nbSamples, *legacyParams);
        } else if(fastParams) {
          /* Run the optimize version if either k or d is not provided */
          if (!fastParams->d || !fastParams->k) {
            dictSize = FUNC5(dictBuffer, maxDictSize, info->srcBuffer,
                                                  info->samplesSizes, info->nbSamples, fastParams);
          } else {
            dictSize = FUNC7(dictBuffer, maxDictSize, info->srcBuffer,
                                                  info->samplesSizes, info->nbSamples, *fastParams);
          }
        } else {
          dictSize = 0;
        }
        if (FUNC3(dictSize)) {
            FUNC0(1, "dictionary training failed : %s \n", FUNC2(dictSize));   /* should not happen */
            FUNC10(dictBuffer);
            return dInfo;
        }
        dInfo = (dictInfo *)FUNC11(sizeof(dictInfo));
        dInfo->dictBuffer = dictBuffer;
        dInfo->dictSize = dictSize;
    }
    return dInfo;
}