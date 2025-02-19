
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {size_t strategy; } ;
struct TYPE_8__ {TYPE_1__ cParams; } ;
struct TYPE_9__ {TYPE_2__ matchState; } ;
typedef TYPE_3__ ZSTD_CDict ;
struct TYPE_10__ {scalar_t__ attachDictPref; int forceWindow; } ;
typedef TYPE_4__ ZSTD_CCtx_params ;
typedef size_t U64 ;


 size_t ZSTD_CONTENTSIZE_UNKNOWN ;
 scalar_t__ ZSTD_dictForceAttach ;
 scalar_t__ ZSTD_dictForceCopy ;
 size_t* attachDictSizeCutoffs ;

__attribute__((used)) static int ZSTD_shouldAttachDict(const ZSTD_CDict* cdict,
                                 ZSTD_CCtx_params params,
                                 U64 pledgedSrcSize)
{
    size_t cutoff = attachDictSizeCutoffs[cdict->matchState.cParams.strategy];
    return ( pledgedSrcSize <= cutoff
          || pledgedSrcSize == ZSTD_CONTENTSIZE_UNKNOWN
          || params.attachDictPref == ZSTD_dictForceAttach )
        && params.attachDictPref != ZSTD_dictForceCopy
        && !params.forceWindow;

}
