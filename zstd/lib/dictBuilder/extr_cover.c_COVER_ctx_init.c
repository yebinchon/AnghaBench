
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int U64 ;
typedef unsigned int U32 ;
struct TYPE_7__ {size_t const* samplesSizes; unsigned int nbSamples; unsigned int nbTrainSamples; unsigned int nbTestSamples; size_t suffixSize; unsigned int* suffix; unsigned int* dmerAt; size_t* offsets; unsigned int* freqs; unsigned int d; int * samples; } ;
typedef TYPE_1__ COVER_ctx_t ;
typedef int BYTE ;


 int COVER_MAX_SAMPLES_SIZE ;
 int COVER_cmp ;
 int COVER_cmp8 ;
 int COVER_ctx_destroy (TYPE_1__*) ;
 int COVER_group ;
 int COVER_groupBy (unsigned int*,unsigned int,int,TYPE_1__*,int *,int *) ;
 int COVER_strict_cmp ;
 int COVER_strict_cmp8 ;
 size_t const COVER_sum (size_t const*,unsigned int const) ;
 int DISPLAYLEVEL (int,char*,...) ;
 size_t ERROR (int ) ;
 size_t const MAX (unsigned int,int) ;
 TYPE_1__* g_ctx ;
 scalar_t__ malloc (unsigned int) ;
 int memory_allocation ;
 int memset (TYPE_1__*,int ,int) ;
 int mergesort (unsigned int*,unsigned int,int,int *) ;
 int qsort (unsigned int*,unsigned int,int,int *) ;
 int srcSize_wrong ;

__attribute__((used)) static size_t COVER_ctx_init(COVER_ctx_t *ctx, const void *samplesBuffer,
                          const size_t *samplesSizes, unsigned nbSamples,
                          unsigned d, double splitPoint) {
  const BYTE *const samples = (const BYTE *)samplesBuffer;
  const size_t totalSamplesSize = COVER_sum(samplesSizes, nbSamples);

  const unsigned nbTrainSamples = splitPoint < 1.0 ? (unsigned)((double)nbSamples * splitPoint) : nbSamples;
  const unsigned nbTestSamples = splitPoint < 1.0 ? nbSamples - nbTrainSamples : nbSamples;
  const size_t trainingSamplesSize = splitPoint < 1.0 ? COVER_sum(samplesSizes, nbTrainSamples) : totalSamplesSize;
  const size_t testSamplesSize = splitPoint < 1.0 ? COVER_sum(samplesSizes + nbTrainSamples, nbTestSamples) : totalSamplesSize;

  if (totalSamplesSize < MAX(d, sizeof(U64)) ||
      totalSamplesSize >= (size_t)COVER_MAX_SAMPLES_SIZE) {
    DISPLAYLEVEL(1, "Total samples size is too large (%u MB), maximum size is %u MB\n",
                 (unsigned)(totalSamplesSize>>20), (COVER_MAX_SAMPLES_SIZE >> 20));
    return ERROR(srcSize_wrong);
  }

  if (nbTrainSamples < 5) {
    DISPLAYLEVEL(1, "Total number of training samples is %u and is invalid.", nbTrainSamples);
    return ERROR(srcSize_wrong);
  }

  if (nbTestSamples < 1) {
    DISPLAYLEVEL(1, "Total number of testing samples is %u and is invalid.", nbTestSamples);
    return ERROR(srcSize_wrong);
  }

  memset(ctx, 0, sizeof(*ctx));
  DISPLAYLEVEL(2, "Training on %u samples of total size %u\n", nbTrainSamples,
               (unsigned)trainingSamplesSize);
  DISPLAYLEVEL(2, "Testing on %u samples of total size %u\n", nbTestSamples,
               (unsigned)testSamplesSize);
  ctx->samples = samples;
  ctx->samplesSizes = samplesSizes;
  ctx->nbSamples = nbSamples;
  ctx->nbTrainSamples = nbTrainSamples;
  ctx->nbTestSamples = nbTestSamples;

  ctx->suffixSize = trainingSamplesSize - MAX(d, sizeof(U64)) + 1;
  ctx->suffix = (U32 *)malloc(ctx->suffixSize * sizeof(U32));

  ctx->dmerAt = (U32 *)malloc(ctx->suffixSize * sizeof(U32));

  ctx->offsets = (size_t *)malloc((nbSamples + 1) * sizeof(size_t));
  if (!ctx->suffix || !ctx->dmerAt || !ctx->offsets) {
    DISPLAYLEVEL(1, "Failed to allocate scratch buffers\n");
    COVER_ctx_destroy(ctx);
    return ERROR(memory_allocation);
  }
  ctx->freqs = ((void*)0);
  ctx->d = d;


  {
    U32 i;
    ctx->offsets[0] = 0;
    for (i = 1; i <= nbSamples; ++i) {
      ctx->offsets[i] = ctx->offsets[i - 1] + samplesSizes[i - 1];
    }
  }
  DISPLAYLEVEL(2, "Constructing partial suffix array\n");
  {




    U32 i;
    for (i = 0; i < ctx->suffixSize; ++i) {
      ctx->suffix[i] = i;
    }



    g_ctx = ctx;




    qsort(ctx->suffix, ctx->suffixSize, sizeof(U32),
          (ctx->d <= 8 ? &COVER_strict_cmp8 : &COVER_strict_cmp));

  }
  DISPLAYLEVEL(2, "Computing frequencies\n");







  COVER_groupBy(ctx->suffix, ctx->suffixSize, sizeof(U32), ctx,
                (ctx->d <= 8 ? &COVER_cmp8 : &COVER_cmp), &COVER_group);
  ctx->freqs = ctx->suffix;
  ctx->suffix = ((void*)0);
  return 0;
}
