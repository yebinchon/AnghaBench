
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTD_DCtx ;


 int CHECK_E (int ,int ) ;
 int CHECK_F (int ) ;
 int ZSTD_decompressBegin (int *) ;
 int ZSTD_decompress_insertDictionary (int *,void const*,size_t) ;
 int dictionary_corrupted ;

size_t ZSTD_decompressBegin_usingDict(ZSTD_DCtx *dctx, const void *dict, size_t dictSize)
{
 CHECK_F(ZSTD_decompressBegin(dctx));
 if (dict && dictSize)
  CHECK_E(ZSTD_decompress_insertDictionary(dctx, dict, dictSize), dictionary_corrupted);
 return 0;
}
