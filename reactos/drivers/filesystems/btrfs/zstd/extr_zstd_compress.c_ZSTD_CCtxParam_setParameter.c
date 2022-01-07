
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int ZSTD_strategy ;
typedef int ZSTD_format_e ;
typedef int ZSTD_cParameter ;
struct TYPE_10__ {int enableLdm; unsigned int hashLog; unsigned int minMatchLength; unsigned int bucketSizeLog; unsigned int hashEveryLog; } ;
struct TYPE_9__ {int contentSizeFlag; int checksumFlag; int noDictIDFlag; } ;
struct TYPE_8__ {unsigned int windowLog; unsigned int hashLog; unsigned int chainLog; unsigned int searchLog; unsigned int searchLength; unsigned int targetLength; int strategy; } ;
struct TYPE_11__ {int compressionLevel; int forceWindow; size_t attachDictPref; TYPE_3__ ldmParams; TYPE_2__ fParams; TYPE_1__ cParams; int format; } ;
typedef TYPE_4__ ZSTD_CCtx_params ;
typedef int U32 ;


 int CLAMPCHECK (unsigned int,unsigned int,unsigned int) ;
 int DEBUGLOG (int,char*,int,...) ;
 size_t ERROR (int ) ;
 size_t ZSTDMT_CCtxParam_setMTCtxParameter (TYPE_4__*,int ,unsigned int) ;
 size_t ZSTDMT_CCtxParam_setNbWorkers (TYPE_4__*,unsigned int) ;
 int ZSTDMT_p_jobSize ;
 int ZSTDMT_p_overlapSectionLog ;
 unsigned int ZSTD_CHAINLOG_MAX ;
 unsigned int ZSTD_CHAINLOG_MIN ;
 unsigned int ZSTD_HASHLOG_MAX ;
 unsigned int ZSTD_HASHLOG_MIN ;
 unsigned int ZSTD_LDM_BUCKETSIZELOG_MAX ;
 unsigned int ZSTD_LDM_MINMATCH_MAX ;
 unsigned int ZSTD_LDM_MINMATCH_MIN ;
 unsigned int ZSTD_SEARCHLENGTH_MAX ;
 unsigned int ZSTD_SEARCHLENGTH_MIN ;
 unsigned int ZSTD_SEARCHLOG_MAX ;
 unsigned int ZSTD_SEARCHLOG_MIN ;
 unsigned int ZSTD_WINDOWLOG_MAX ;
 unsigned int ZSTD_WINDOWLOG_MIN ;
 int ZSTD_btultra ;
 size_t ZSTD_dictDefaultAttach ;
 size_t ZSTD_dictForceAttach ;
 size_t ZSTD_dictForceCopy ;
 int ZSTD_f_zstd1_magicless ;
 int ZSTD_fast ;
 int ZSTD_maxCLevel () ;
 int parameter_outOfBound ;
 int parameter_unsupported ;

size_t ZSTD_CCtxParam_setParameter(
        ZSTD_CCtx_params* CCtxParams, ZSTD_cParameter param, unsigned value)
{
    DEBUGLOG(4, "ZSTD_CCtxParam_setParameter (%u, %u)", (U32)param, value);
    switch(param)
    {
    case 140 :
        if (value > (unsigned)ZSTD_f_zstd1_magicless)
            return ERROR(parameter_unsupported);
        CCtxParams->format = (ZSTD_format_e)value;
        return (size_t)CCtxParams->format;

    case 147 : {
        int cLevel = (int)value;
        if (cLevel > ZSTD_maxCLevel()) cLevel = ZSTD_maxCLevel();
        if (cLevel) {
            CCtxParams->compressionLevel = cLevel;
        }
        if (CCtxParams->compressionLevel >= 0) return CCtxParams->compressionLevel;
        return 0;
    }

    case 128 :
        if (value>0)
            CLAMPCHECK(value, ZSTD_WINDOWLOG_MIN, ZSTD_WINDOWLOG_MAX);
        CCtxParams->cParams.windowLog = value;
        return CCtxParams->cParams.windowLog;

    case 139 :
        if (value>0)
            CLAMPCHECK(value, ZSTD_HASHLOG_MIN, ZSTD_HASHLOG_MAX);
        CCtxParams->cParams.hashLog = value;
        return CCtxParams->cParams.hashLog;

    case 149 :
        if (value>0)
            CLAMPCHECK(value, ZSTD_CHAINLOG_MIN, ZSTD_CHAINLOG_MAX);
        CCtxParams->cParams.chainLog = value;
        return CCtxParams->cParams.chainLog;

    case 130 :
        if (value>0)
            CLAMPCHECK(value, ZSTD_SEARCHLOG_MIN, ZSTD_SEARCHLOG_MAX);
        CCtxParams->cParams.searchLog = value;
        return value;

    case 133 :
        if (value>0)
            CLAMPCHECK(value, ZSTD_SEARCHLENGTH_MIN, ZSTD_SEARCHLENGTH_MAX);
        CCtxParams->cParams.searchLength = value;
        return CCtxParams->cParams.searchLength;

    case 129 :

        CCtxParams->cParams.targetLength = value;
        return CCtxParams->cParams.targetLength;

    case 146 :
        if (value>0)
            CLAMPCHECK(value, (unsigned)ZSTD_fast, (unsigned)ZSTD_btultra);
        CCtxParams->cParams.strategy = (ZSTD_strategy)value;
        return (size_t)CCtxParams->cParams.strategy;

    case 145 :

        DEBUGLOG(4, "set content size flag = %u", (value>0));
        CCtxParams->fParams.contentSizeFlag = value > 0;
        return CCtxParams->fParams.contentSizeFlag;

    case 148 :

        CCtxParams->fParams.checksumFlag = value > 0;
        return CCtxParams->fParams.checksumFlag;

    case 144 :
        DEBUGLOG(4, "set dictIDFlag = %u", (value>0));
        CCtxParams->fParams.noDictIDFlag = !value;
        return !CCtxParams->fParams.noDictIDFlag;

    case 141 :
        CCtxParams->forceWindow = (value > 0);
        return CCtxParams->forceWindow;

    case 142 :
        CCtxParams->attachDictPref = value ?
                                    (value > 0 ? ZSTD_dictForceAttach : ZSTD_dictForceCopy) :
                                     ZSTD_dictDefaultAttach;
        return CCtxParams->attachDictPref;

    case 132 :

        if (value>0) return ERROR(parameter_unsupported);
        return 0;




    case 138 :

        return ERROR(parameter_unsupported);




    case 131 :

        return ERROR(parameter_unsupported);




    case 143 :
        CCtxParams->ldmParams.enableLdm = (value>0);
        return CCtxParams->ldmParams.enableLdm;

    case 135 :
        if (value>0)
            CLAMPCHECK(value, ZSTD_HASHLOG_MIN, ZSTD_HASHLOG_MAX);
        CCtxParams->ldmParams.hashLog = value;
        return CCtxParams->ldmParams.hashLog;

    case 134 :
        if (value>0)
            CLAMPCHECK(value, ZSTD_LDM_MINMATCH_MIN, ZSTD_LDM_MINMATCH_MAX);
        CCtxParams->ldmParams.minMatchLength = value;
        return CCtxParams->ldmParams.minMatchLength;

    case 137 :
        if (value > ZSTD_LDM_BUCKETSIZELOG_MAX)
            return ERROR(parameter_outOfBound);
        CCtxParams->ldmParams.bucketSizeLog = value;
        return CCtxParams->ldmParams.bucketSizeLog;

    case 136 :
        if (value > ZSTD_WINDOWLOG_MAX - ZSTD_HASHLOG_MIN)
            return ERROR(parameter_outOfBound);
        CCtxParams->ldmParams.hashEveryLog = value;
        return CCtxParams->ldmParams.hashEveryLog;

    default: return ERROR(parameter_unsupported);
    }
}
