#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {size_t k; size_t d; } ;
typedef  TYPE_1__ ZDICT_fastCover_params_t ;
typedef  size_t U32 ;
struct TYPE_11__ {size_t const nbDmers; scalar_t__ samples; } ;
struct TYPE_10__ {scalar_t__ score; scalar_t__ begin; scalar_t__ end; } ;
typedef  TYPE_2__ FASTCOVER_segment_t ;
typedef  TYPE_3__ FASTCOVER_ctx_t ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,size_t) ; 
 TYPE_2__ FUNC2 (TYPE_3__ const*,size_t*,size_t const,size_t const,TYPE_1__) ; 
 size_t FUNC3 (int,size_t) ; 
 size_t FUNC4 (scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ * const,scalar_t__,size_t) ; 

__attribute__((used)) static size_t FUNC6(const FASTCOVER_ctx_t *ctx, U32 *freqs,
                                    void *dictBuffer,
                                    size_t dictBufferCapacity,
                                    ZDICT_fastCover_params_t parameters){
  BYTE *const dict = (BYTE *)dictBuffer;
  size_t tail = dictBufferCapacity;
  /* Divide the data up into epochs of equal size.
   * We will select at least one segment from each epoch.
   */
  const U32 epochs = FUNC3(1, (U32)(dictBufferCapacity / parameters.k));
  const U32 epochSize = (U32)(ctx->nbDmers / epochs);
  size_t epoch;
  FUNC0(2, "Breaking content into %u epochs of size %u\n", epochs,
               epochSize);
  /* Loop through the epochs until there are no more segments or the dictionary
   * is full.
   */
  for (epoch = 0; tail > 0; epoch = (epoch + 1) % epochs) {
    const U32 epochBegin = (U32)(epoch * epochSize);
    const U32 epochEnd = epochBegin + epochSize;
    size_t segmentSize;
    /* Select a segment */
    FASTCOVER_segment_t segment = FUNC2(
        ctx, freqs, epochBegin, epochEnd, parameters);

    /* If the segment covers no dmers, then we are out of content */
    if (segment.score == 0) {
      break;
    }

    /* Trim the segment if necessary and if it is too small then we are done */
    segmentSize = FUNC4(segment.end - segment.begin + parameters.d - 1, tail);
    if (segmentSize < parameters.d) {
      break;
    }

    /* We fill the dictionary from the back to allow the best segments to be
     * referenced with the smallest offsets.
     */
    tail -= segmentSize;
    FUNC5(dict + tail, ctx->samples + segment.begin, segmentSize);
    FUNC1(
        2, "\r%u%%       ",
        (U32)(((dictBufferCapacity - tail) * 100) / dictBufferCapacity));
  }
  FUNC0(2, "\r%79s\r", "");
  return tail;
}