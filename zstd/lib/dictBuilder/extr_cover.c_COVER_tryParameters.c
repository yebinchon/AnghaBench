
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_15__ {scalar_t__ d; scalar_t__ k; } ;
typedef TYPE_1__ ZDICT_cover_params_t ;
struct TYPE_16__ {size_t dictBufferCapacity; int best; TYPE_1__ parameters; TYPE_4__* ctx; } ;
typedef TYPE_2__ U32 ;
struct TYPE_17__ {int suffixSize; int offsets; int nbSamples; scalar_t__ nbTrainSamples; int samplesSizes; int samples; int freqs; } ;
typedef TYPE_2__ COVER_tryParameters_data_t ;
typedef int COVER_map_t ;
typedef int COVER_dictSelection_t ;
typedef TYPE_4__ COVER_ctx_t ;
typedef TYPE_2__ BYTE ;


 int COVER_best_finish (int ,TYPE_1__ const,int ) ;
 size_t COVER_buildDictionary (TYPE_4__ const* const,TYPE_2__*,int *,TYPE_2__* const,size_t,TYPE_1__ const) ;
 int COVER_dictSelectionError (size_t) ;
 int COVER_dictSelectionFree (int ) ;
 scalar_t__ COVER_dictSelectionIsError (int ) ;
 int COVER_map_destroy (int *) ;
 int COVER_map_init (int *,scalar_t__) ;
 int COVER_selectDict (TYPE_2__* const,size_t,int ,int ,unsigned int,scalar_t__,int ,TYPE_1__ const,int ,size_t) ;
 int DISPLAYLEVEL (int,char*) ;
 size_t ERROR (int ) ;
 int GENERIC ;
 int free (TYPE_2__* const) ;
 scalar_t__ malloc (int) ;
 int memcpy (TYPE_2__*,int ,int) ;

__attribute__((used)) static void COVER_tryParameters(void *opaque) {

  COVER_tryParameters_data_t *const data = (COVER_tryParameters_data_t *)opaque;
  const COVER_ctx_t *const ctx = data->ctx;
  const ZDICT_cover_params_t parameters = data->parameters;
  size_t dictBufferCapacity = data->dictBufferCapacity;
  size_t totalCompressedSize = ERROR(GENERIC);

  COVER_map_t activeDmers;
  BYTE *const dict = (BYTE * const)malloc(dictBufferCapacity);
  COVER_dictSelection_t selection = COVER_dictSelectionError(ERROR(GENERIC));
  U32 *freqs = (U32 *)malloc(ctx->suffixSize * sizeof(U32));
  if (!COVER_map_init(&activeDmers, parameters.k - parameters.d + 1)) {
    DISPLAYLEVEL(1, "Failed to allocate dmer map: out of memory\n");
    goto _cleanup;
  }
  if (!dict || !freqs) {
    DISPLAYLEVEL(1, "Failed to allocate buffers: out of memory\n");
    goto _cleanup;
  }

  memcpy(freqs, ctx->freqs, ctx->suffixSize * sizeof(U32));

  {
    const size_t tail = COVER_buildDictionary(ctx, freqs, &activeDmers, dict,
                                              dictBufferCapacity, parameters);
    selection = COVER_selectDict(dict + tail, dictBufferCapacity - tail,
        ctx->samples, ctx->samplesSizes, (unsigned)ctx->nbTrainSamples, ctx->nbTrainSamples, ctx->nbSamples, parameters, ctx->offsets,
        totalCompressedSize);

    if (COVER_dictSelectionIsError(selection)) {
      DISPLAYLEVEL(1, "Failed to select dictionary\n");
      goto _cleanup;
    }
  }
_cleanup:
  free(dict);
  COVER_best_finish(data->best, parameters, selection);
  free(data);
  COVER_map_destroy(&activeDmers);
  COVER_dictSelectionFree(selection);
  if (freqs) {
    free(freqs);
  }
}
