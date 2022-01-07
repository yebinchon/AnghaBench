
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int nextToUpdate; int const* const base; } ;
typedef TYPE_1__ ZSTD_CCtx ;
typedef int U32 ;
typedef int BYTE ;


 size_t ZSTD_insertBtAndFindBestMatch (TYPE_1__*,int const* const,int const* const,size_t*,int const,int const,int) ;
 int ZSTD_updateTree_extDict (TYPE_1__*,int const* const,int const* const,int const,int const) ;

__attribute__((used)) static size_t ZSTD_BtFindBestMatch_extDict(ZSTD_CCtx *zc, const BYTE *const ip, const BYTE *const iLimit, size_t *offsetPtr, const U32 maxNbAttempts,
        const U32 mls)
{
 if (ip < zc->base + zc->nextToUpdate)
  return 0;
 ZSTD_updateTree_extDict(zc, ip, iLimit, maxNbAttempts, mls);
 return ZSTD_insertBtAndFindBestMatch(zc, ip, iLimit, offsetPtr, maxNbAttempts, mls, 1);
}
