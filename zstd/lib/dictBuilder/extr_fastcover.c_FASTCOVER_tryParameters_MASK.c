#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ZDICT_cover_params_t ;
typedef  int U64 ;
struct TYPE_15__ {size_t dictBufferCapacity; int /*<<< orphan*/  best; int /*<<< orphan*/  parameters; TYPE_5__* ctx; } ;
typedef  TYPE_2__ U32 ;
typedef  TYPE_2__ U16 ;
struct TYPE_14__ {int finalize; } ;
struct TYPE_16__ {int f; int nbTrainSamples; int /*<<< orphan*/  offsets; int /*<<< orphan*/  nbSamples; int /*<<< orphan*/  samplesSizes; int /*<<< orphan*/  samples; TYPE_1__ accelParams; int /*<<< orphan*/  freqs; } ;
typedef  TYPE_2__ FASTCOVER_tryParameters_data_t ;
typedef  TYPE_5__ FASTCOVER_ctx_t ;
typedef  int /*<<< orphan*/  COVER_dictSelection_t ;
typedef  TYPE_2__ BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__* const,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int const,int,int /*<<< orphan*/ ,int /*<<< orphan*/  const,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 
 size_t FUNC6 (int /*<<< orphan*/ ) ; 
 size_t FUNC7 (TYPE_5__ const* const,TYPE_2__*,TYPE_2__* const,size_t,int /*<<< orphan*/  const,TYPE_2__*) ; 
 int /*<<< orphan*/  GENERIC ; 
 scalar_t__ FUNC8 (int,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__* const) ; 
 scalar_t__ FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC12(void *opaque)
{
  /* Save parameters as local variables */
  FASTCOVER_tryParameters_data_t *const data = (FASTCOVER_tryParameters_data_t *)opaque;
  const FASTCOVER_ctx_t *const ctx = data->ctx;
  const ZDICT_cover_params_t parameters = data->parameters;
  size_t dictBufferCapacity = data->dictBufferCapacity;
  size_t totalCompressedSize = FUNC6(GENERIC);
  /* Initialize array to keep track of frequency of dmer within activeSegment */
  U16* segmentFreqs = (U16 *)FUNC8(((U64)1 << ctx->f), sizeof(U16));
  /* Allocate space for hash table, dict, and freqs */
  BYTE *const dict = (BYTE * const)FUNC10(dictBufferCapacity);
  COVER_dictSelection_t selection = FUNC1(FUNC6(GENERIC));
  U32 *freqs = (U32*) FUNC10(((U64)1 << ctx->f) * sizeof(U32));
  if (!segmentFreqs || !dict || !freqs) {
    FUNC5(1, "Failed to allocate buffers: out of memory\n");
    goto _cleanup;
  }
  /* Copy the frequencies because we need to modify them */
  FUNC11(freqs, ctx->freqs, ((U64)1 << ctx->f) * sizeof(U32));
  /* Build the dictionary */
  { const size_t tail = FUNC7(ctx, freqs, dict, dictBufferCapacity,
                                                    parameters, segmentFreqs);

    const unsigned nbFinalizeSamples = (unsigned)(ctx->nbTrainSamples * ctx->accelParams.finalize / 100);
    selection = FUNC4(dict + tail, dictBufferCapacity - tail,
         ctx->samples, ctx->samplesSizes, nbFinalizeSamples, ctx->nbTrainSamples, ctx->nbSamples, parameters, ctx->offsets,
         totalCompressedSize);

    if (FUNC3(selection)) {
      FUNC5(1, "Failed to select dictionary\n");
      goto _cleanup;
    }
  }
_cleanup:
  FUNC9(dict);
  FUNC0(data->best, parameters, selection);
  FUNC9(data);
  FUNC9(segmentFreqs);
  FUNC2(selection);
  FUNC9(freqs);
}