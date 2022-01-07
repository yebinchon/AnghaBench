
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTD_parameters ;


 size_t MIN (int,size_t) ;
 size_t ZSTD_compressCCtx (int ,void*,size_t,void const*,size_t,int const) ;
 size_t ZSTD_decompressDCtx (int ,void*,size_t,void*,size_t const) ;
 int ZSTD_getErrorCode (size_t const) ;
 int ZSTD_getParams (int const,size_t,int ) ;
 scalar_t__ ZSTD_isError (size_t const) ;
 int cctx ;
 int dctx ;
 int fprintf (int ,char*,int) ;
 unsigned int const kMaxClevel ;
 int stderr ;
 unsigned int xxh32 (void const*,size_t const,int ) ;

__attribute__((used)) static size_t roundTripTest(void* resultBuff, size_t resultBuffCapacity,
                            void* compressedBuff, size_t compressedBuffCapacity,
                      const void* srcBuff, size_t srcBuffSize)
{
    size_t const hashLength = MIN(128, srcBuffSize);
    unsigned const h32 = xxh32(srcBuff, hashLength, 0);
    int const cLevel = h32 % kMaxClevel;
    ZSTD_parameters const params = ZSTD_getParams(cLevel, srcBuffSize, 0);
    size_t const cSize = ZSTD_compressCCtx(cctx, compressedBuff, compressedBuffCapacity, srcBuff, srcBuffSize, params);
    if (ZSTD_isError(cSize)) {
        fprintf(stderr, "Compression error : %u \n", ZSTD_getErrorCode(cSize));
        return cSize;
    }
    return ZSTD_decompressDCtx(dctx, resultBuff, resultBuffCapacity, compressedBuff, cSize);
}
