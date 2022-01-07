
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int nbSamples; int samplesSizes; int srcBuffer; } ;
typedef TYPE_2__ sampleInfo ;
struct TYPE_7__ {unsigned int notificationLevel; } ;
struct TYPE_9__ {int k; TYPE_1__ zParams; } ;
typedef TYPE_3__ ZDICT_random_params_t ;
typedef int U32 ;


 int DISPLAYLEVEL (int,char*,int ,...) ;
 int EXM_THROW (int,char*) ;
 int ZDICT_getErrorName (size_t) ;
 scalar_t__ ZDICT_isError (size_t) ;
 size_t ZDICT_trainFromBuffer_random (void* const,unsigned int,int ,int ,int ,TYPE_3__) ;
 int free (void* const) ;
 void* malloc (unsigned int) ;
 int saveDict (char const*,void* const,size_t) ;

int RANDOM_trainFromFiles(const char* dictFileName, sampleInfo *info,
                          unsigned maxDictSize,
                          ZDICT_random_params_t *params) {
    unsigned const displayLevel = params->zParams.notificationLevel;
    void* const dictBuffer = malloc(maxDictSize);

    int result = 0;


    if (!dictBuffer)
        EXM_THROW(12, "not enough memory for trainFromFiles");

    { size_t dictSize;
        dictSize = ZDICT_trainFromBuffer_random(dictBuffer, maxDictSize, info->srcBuffer,
                                             info->samplesSizes, info->nbSamples, *params);
        DISPLAYLEVEL(2, "k=%u\n", params->k);
        if (ZDICT_isError(dictSize)) {
            DISPLAYLEVEL(1, "dictionary training failed : %s \n", ZDICT_getErrorName(dictSize));
            result = 1;
            goto _done;
        }

        DISPLAYLEVEL(2, "Save dictionary of size %u into file %s \n", (U32)dictSize, dictFileName);
        saveDict(dictFileName, dictBuffer, dictSize);
    }


_done:
    free(dictBuffer);
    return result;
}
