
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTD_CCtx ;
typedef int U32 ;
typedef int BYTE ;


 size_t ZSTD_BtFindBestMatch (int *,int const*,int const* const,size_t*,int const,int) ;

__attribute__((used)) static size_t ZSTD_BtFindBestMatch_selectMLS(ZSTD_CCtx *zc,
          const BYTE *ip, const BYTE *const iLimit, size_t *offsetPtr, const U32 maxNbAttempts, const U32 matchLengthSearch)
{
 switch (matchLengthSearch) {
 default:
 case 4: return ZSTD_BtFindBestMatch(zc, ip, iLimit, offsetPtr, maxNbAttempts, 4);
 case 5: return ZSTD_BtFindBestMatch(zc, ip, iLimit, offsetPtr, maxNbAttempts, 5);
 case 7:
 case 6: return ZSTD_BtFindBestMatch(zc, ip, iLimit, offsetPtr, maxNbAttempts, 6);
 }
}
