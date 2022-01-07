
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {void* member_0; size_t member_1; int pos; int member_2; } ;
typedef TYPE_1__ ZSTD_outBuffer ;
struct TYPE_6__ {void const* member_0; size_t member_1; int member_2; } ;
typedef TYPE_2__ ZSTD_inBuffer ;
typedef int ZSTD_CCtx_params ;
typedef int ZSTD_CCtx ;


 int CHECK_Z (int ) ;
 size_t MIN (int,size_t) ;
 unsigned int XXH32 (void const*,size_t const,int ) ;
 int ZSTD_CCtxParams_setParameter (int * const,int ,int const) ;
 int ZSTD_CCtx_setParametersUsingCCtxParams (int * const,int * const) ;
 int ZSTD_c_compressionLevel ;
 int ZSTD_c_nbWorkers ;
 int ZSTD_c_overlapLog ;
 int ZSTD_compressStream2 (int * const,TYPE_1__*,TYPE_2__*,int ) ;
 int * ZSTD_createCCtx () ;
 int * ZSTD_createCCtxParams () ;
 size_t ZSTD_decompress (void*,size_t,void*,int ) ;
 int ZSTD_e_end ;
 int ZSTD_freeCCtx (int * const) ;
 int ZSTD_freeCCtxParams (int * const) ;

__attribute__((used)) static size_t cctxParamRoundTripTest(void* resultBuff, size_t resultBuffCapacity,
                            void* compressedBuff, size_t compressedBuffCapacity,
                      const void* srcBuff, size_t srcBuffSize)
{
    ZSTD_CCtx* const cctx = ZSTD_createCCtx();
    ZSTD_CCtx_params* const cctxParams = ZSTD_createCCtxParams();
    ZSTD_inBuffer inBuffer = { srcBuff, srcBuffSize, 0 };
    ZSTD_outBuffer outBuffer = { compressedBuff, compressedBuffCapacity, 0 };

    static const int maxClevel = 19;
    size_t const hashLength = MIN(128, srcBuffSize);
    unsigned const h32 = XXH32(srcBuff, hashLength, 0);
    int const cLevel = h32 % maxClevel;


    CHECK_Z( ZSTD_CCtxParams_setParameter(cctxParams, ZSTD_c_compressionLevel, cLevel) );
    CHECK_Z( ZSTD_CCtxParams_setParameter(cctxParams, ZSTD_c_nbWorkers, 2) );
    CHECK_Z( ZSTD_CCtxParams_setParameter(cctxParams, ZSTD_c_overlapLog, 5) );



    CHECK_Z( ZSTD_CCtx_setParametersUsingCCtxParams(cctx, cctxParams) );

    CHECK_Z (ZSTD_compressStream2(cctx, &outBuffer, &inBuffer, ZSTD_e_end) );

    ZSTD_freeCCtxParams(cctxParams);
    ZSTD_freeCCtx(cctx);

    return ZSTD_decompress(resultBuff, resultBuffCapacity, compressedBuff, outBuffer.pos);
}
