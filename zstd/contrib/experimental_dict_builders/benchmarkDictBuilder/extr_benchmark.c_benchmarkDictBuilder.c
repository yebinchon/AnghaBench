
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_8__ ;
typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int sampleInfo ;
typedef int dictInfo ;
struct TYPE_17__ {unsigned int notificationLevel; unsigned int compressionLevel; } ;
struct TYPE_21__ {TYPE_1__ zParams; } ;
typedef TYPE_5__ ZDICT_random_params_t ;
struct TYPE_19__ {unsigned int notificationLevel; unsigned int compressionLevel; } ;
struct TYPE_22__ {TYPE_3__ zParams; } ;
typedef TYPE_6__ ZDICT_legacy_params_t ;
struct TYPE_20__ {unsigned int notificationLevel; unsigned int compressionLevel; } ;
struct TYPE_23__ {TYPE_4__ zParams; } ;
typedef TYPE_7__ ZDICT_fastCover_params_t ;
struct TYPE_18__ {unsigned int notificationLevel; unsigned int compressionLevel; } ;
struct TYPE_24__ {TYPE_2__ zParams; } ;
typedef TYPE_8__ ZDICT_cover_params_t ;
typedef int UTIL_time_t ;
typedef double U64 ;


 unsigned int DEFAULT_CLEVEL ;
 unsigned int DEFAULT_DISPLAYLEVEL ;
 int DISPLAYLEVEL (int,char*,char const*,...) ;
 scalar_t__ SEC_TO_MICRO ;
 double UTIL_clockSpanMicro (int const) ;
 int UTIL_getTime () ;
 double compressWithDict (int *,int *,unsigned int const,unsigned int const) ;
 int * createDictFromFiles (int *,unsigned int,TYPE_5__*,TYPE_8__*,TYPE_6__*,TYPE_7__*) ;
 int freeDictInfo (int *) ;

int benchmarkDictBuilder(sampleInfo *srcInfo, unsigned maxDictSize, ZDICT_random_params_t *randomParam,
                        ZDICT_cover_params_t *coverParam, ZDICT_legacy_params_t *legacyParam,
                        ZDICT_fastCover_params_t *fastParam) {

  const unsigned displayLevel = randomParam ? randomParam->zParams.notificationLevel :
                                coverParam ? coverParam->zParams.notificationLevel :
                                legacyParam ? legacyParam->zParams.notificationLevel :
                                fastParam ? fastParam->zParams.notificationLevel:
                                DEFAULT_DISPLAYLEVEL;
  const char* name = randomParam ? "RANDOM" :
                    coverParam ? "COVER" :
                    legacyParam ? "LEGACY" :
                    fastParam ? "FAST":
                    "NODICT";
  const unsigned cLevel = randomParam ? randomParam->zParams.compressionLevel :
                          coverParam ? coverParam->zParams.compressionLevel :
                          legacyParam ? legacyParam->zParams.compressionLevel :
                          fastParam ? fastParam->zParams.compressionLevel:
                          DEFAULT_CLEVEL;
  int result = 0;


  const UTIL_time_t begin = UTIL_getTime();
  dictInfo* dInfo = createDictFromFiles(srcInfo, maxDictSize, randomParam, coverParam, legacyParam, fastParam);
  const U64 timeMicro = UTIL_clockSpanMicro(begin);
  const double timeSec = timeMicro / (double)SEC_TO_MICRO;
  if (!dInfo) {
    DISPLAYLEVEL(1, "%s does not train successfully\n", name);
    result = 1;
    goto _cleanup;
  }
  DISPLAYLEVEL(1, "%s took %f seconds to execute \n", name, timeSec);


  const double cRatio = compressWithDict(srcInfo, dInfo, cLevel, displayLevel);
  if (cRatio < 0) {
    DISPLAYLEVEL(1, "Compressing with %s dictionary does not work\n", name);
    result = 1;
    goto _cleanup;

  }
  DISPLAYLEVEL(1, "Compression ratio with %s dictionary is %f\n", name, cRatio);

_cleanup:
  freeDictInfo(dInfo);
  return result;
}
