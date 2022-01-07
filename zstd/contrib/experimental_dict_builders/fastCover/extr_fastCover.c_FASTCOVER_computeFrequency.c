
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int U32 ;
struct TYPE_3__ {unsigned int nbTrainSamples; size_t* offsets; size_t d; scalar_t__ samples; } ;
typedef TYPE_1__ FASTCOVER_ctx_t ;


 size_t FASTCOVER_hashPtrToIndex (scalar_t__,unsigned int,size_t) ;

__attribute__((used)) static void FASTCOVER_computeFrequency(U32 *freqs, unsigned f, FASTCOVER_ctx_t *ctx){
  size_t start;
  for (unsigned i = 0; i < ctx->nbTrainSamples; i++) {
    size_t currSampleStart = ctx->offsets[i];
    size_t currSampleEnd = ctx->offsets[i+1];
    start = currSampleStart;
    while (start + ctx->d <= currSampleEnd) {
      const size_t dmerIndex = FASTCOVER_hashPtrToIndex(ctx->samples + start, f, ctx->d);
      freqs[dmerIndex]++;
      start++;
    }
  }
}
