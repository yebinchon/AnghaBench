
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FUZZ_dataProducer_t ;


 int FUZZ_ZASSERT (size_t) ;
 int FUZZ_dataProducer_int32Range (int *,int ,int ) ;
 scalar_t__ FUZZ_dataProducer_uint32Range (int *,int ,int) ;
 int FUZZ_setRandomParameters (int ,size_t,int *) ;
 size_t ZSTD_compress2 (int ,void*,size_t,void const*,size_t) ;
 size_t ZSTD_compressCCtx (int ,void*,size_t,void const*,size_t,int const) ;
 size_t ZSTD_decompressDCtx (int ,void*,size_t,void*,size_t) ;
 int cctx ;
 int dctx ;
 int kMaxClevel ;
 int kMinClevel ;

__attribute__((used)) static size_t roundTripTest(void *result, size_t resultCapacity,
                            void *compressed, size_t compressedCapacity,
                            const void *src, size_t srcSize,
                            FUZZ_dataProducer_t *producer)
{
    size_t cSize;
    if (FUZZ_dataProducer_uint32Range(producer, 0, 1)) {
        FUZZ_setRandomParameters(cctx, srcSize, producer);
        cSize = ZSTD_compress2(cctx, compressed, compressedCapacity, src, srcSize);
    } else {
      int const cLevel = FUZZ_dataProducer_int32Range(producer, kMinClevel, kMaxClevel);

        cSize = ZSTD_compressCCtx(
            cctx, compressed, compressedCapacity, src, srcSize, cLevel);
    }
    FUZZ_ZASSERT(cSize);
    return ZSTD_decompressDCtx(dctx, result, resultCapacity, compressed, cSize);
}
