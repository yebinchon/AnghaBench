
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dictIDFlag; int checksumFlag; int nbWorkers; int minAdaptLevel; int maxAdaptLevel; scalar_t__ excludeCompressedFiles; int literalCompressionMode; scalar_t__ testMode; scalar_t__ srcSizeHint; scalar_t__ targetCBlockSize; scalar_t__ streamSrcSize; void* ldmHashRateLog; void* ldmBucketSizeLog; scalar_t__ ldmMinMatch; scalar_t__ ldmHashLog; scalar_t__ ldmFlag; scalar_t__ rsyncable; scalar_t__ adaptiveMode; int overlapLog; scalar_t__ blockSize; scalar_t__ memLimit; scalar_t__ removeSrcFile; int sparseFileSupport; scalar_t__ overwrite; int compressionType; } ;
typedef TYPE_1__ FIO_prefs_t ;


 int EXM_THROW (int,char*) ;
 void* FIO_LDM_PARAM_NOTSET ;
 int FIO_OVERLAP_LOG_NOTSET ;
 int FIO_zstdCompression ;
 int ZSTD_SPARSE_DEFAULT ;
 int ZSTD_lcm_auto ;
 scalar_t__ malloc (int) ;

FIO_prefs_t* FIO_createPreferences(void)
{
    FIO_prefs_t* const ret = (FIO_prefs_t*)malloc(sizeof(FIO_prefs_t));
    if (!ret) EXM_THROW(21, "Allocation error : not enough memory");

    ret->compressionType = FIO_zstdCompression;
    ret->overwrite = 0;
    ret->sparseFileSupport = ZSTD_SPARSE_DEFAULT;
    ret->dictIDFlag = 1;
    ret->checksumFlag = 1;
    ret->removeSrcFile = 0;
    ret->memLimit = 0;
    ret->nbWorkers = 1;
    ret->blockSize = 0;
    ret->overlapLog = FIO_OVERLAP_LOG_NOTSET;
    ret->adaptiveMode = 0;
    ret->rsyncable = 0;
    ret->minAdaptLevel = -50;
    ret->maxAdaptLevel = 22;
    ret->ldmFlag = 0;
    ret->ldmHashLog = 0;
    ret->ldmMinMatch = 0;
    ret->ldmBucketSizeLog = FIO_LDM_PARAM_NOTSET;
    ret->ldmHashRateLog = FIO_LDM_PARAM_NOTSET;
    ret->streamSrcSize = 0;
    ret->targetCBlockSize = 0;
    ret->srcSizeHint = 0;
    ret->testMode = 0;
    ret->literalCompressionMode = ZSTD_lcm_auto;
    ret->excludeCompressedFiles = 0;
    return ret;
}
