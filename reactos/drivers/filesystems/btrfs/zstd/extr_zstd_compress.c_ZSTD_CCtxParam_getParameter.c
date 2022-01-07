
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ZSTD_cParameter ;
struct TYPE_8__ {unsigned int enableLdm; unsigned int hashLog; unsigned int minMatchLength; unsigned int bucketSizeLog; unsigned int hashEveryLog; } ;
struct TYPE_7__ {unsigned int contentSizeFlag; unsigned int checksumFlag; int noDictIDFlag; } ;
struct TYPE_6__ {unsigned int windowLog; unsigned int hashLog; unsigned int chainLog; unsigned int searchLog; unsigned int searchLength; unsigned int targetLength; int strategy; } ;
struct TYPE_9__ {unsigned int format; unsigned int compressionLevel; unsigned int forceWindow; unsigned int attachDictPref; unsigned int nbWorkers; unsigned int jobSize; unsigned int overlapSizeLog; TYPE_3__ ldmParams; TYPE_2__ fParams; TYPE_1__ cParams; } ;
typedef TYPE_4__ ZSTD_CCtx_params ;


 size_t ERROR (int ) ;
 int assert (int) ;
 int parameter_unsupported ;

size_t ZSTD_CCtxParam_getParameter(
        ZSTD_CCtx_params* CCtxParams, ZSTD_cParameter param, unsigned* value)
{
    switch(param)
    {
    case 140 :
        *value = CCtxParams->format;
        break;
    case 147 :
        *value = CCtxParams->compressionLevel;
        break;
    case 128 :
        *value = CCtxParams->cParams.windowLog;
        break;
    case 139 :
        *value = CCtxParams->cParams.hashLog;
        break;
    case 149 :
        *value = CCtxParams->cParams.chainLog;
        break;
    case 130 :
        *value = CCtxParams->cParams.searchLog;
        break;
    case 133 :
        *value = CCtxParams->cParams.searchLength;
        break;
    case 129 :
        *value = CCtxParams->cParams.targetLength;
        break;
    case 146 :
        *value = (unsigned)CCtxParams->cParams.strategy;
        break;
    case 145 :
        *value = CCtxParams->fParams.contentSizeFlag;
        break;
    case 148 :
        *value = CCtxParams->fParams.checksumFlag;
        break;
    case 144 :
        *value = !CCtxParams->fParams.noDictIDFlag;
        break;
    case 141 :
        *value = CCtxParams->forceWindow;
        break;
    case 142 :
        *value = CCtxParams->attachDictPref;
        break;
    case 132 :

        assert(CCtxParams->nbWorkers == 0);

        *value = CCtxParams->nbWorkers;
        break;
    case 138 :

        return ERROR(parameter_unsupported);




    case 131 :

        return ERROR(parameter_unsupported);




    case 143 :
        *value = CCtxParams->ldmParams.enableLdm;
        break;
    case 135 :
        *value = CCtxParams->ldmParams.hashLog;
        break;
    case 134 :
        *value = CCtxParams->ldmParams.minMatchLength;
        break;
    case 137 :
        *value = CCtxParams->ldmParams.bucketSizeLog;
        break;
    case 136 :
        *value = CCtxParams->ldmParams.hashEveryLog;
        break;
    default: return ERROR(parameter_unsupported);
    }
    return 0;
}
