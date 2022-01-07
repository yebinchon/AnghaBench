
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int U32 ;
struct TYPE_4__ {unsigned int skip; } ;
struct TYPE_5__ {unsigned int f; unsigned int d; int nbTrainSamples; int nbSamples; size_t* offsets; scalar_t__ samples; TYPE_1__ accelParams; } ;
typedef TYPE_2__ FASTCOVER_ctx_t ;


 size_t FASTCOVER_hashPtrToIndex (scalar_t__,unsigned int const,unsigned int const) ;
 unsigned int MAX (unsigned int const,int) ;
 int assert (int) ;

__attribute__((used)) static void
FASTCOVER_computeFrequency(U32* freqs, const FASTCOVER_ctx_t* ctx)
{
    const unsigned f = ctx->f;
    const unsigned d = ctx->d;
    const unsigned skip = ctx->accelParams.skip;
    const unsigned readLength = MAX(d, 8);
    size_t i;
    assert(ctx->nbTrainSamples >= 5);
    assert(ctx->nbTrainSamples <= ctx->nbSamples);
    for (i = 0; i < ctx->nbTrainSamples; i++) {
        size_t start = ctx->offsets[i];
        size_t const currSampleEnd = ctx->offsets[i+1];
        while (start + readLength <= currSampleEnd) {
            const size_t dmerIndex = FASTCOVER_hashPtrToIndex(ctx->samples + start, f, d);
            freqs[dmerIndex]++;
            start = start + skip + 1;
        }
    }
}
