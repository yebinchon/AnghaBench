
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {size_t d; int k; } ;
typedef TYPE_1__ ZDICT_cover_params_t ;
typedef size_t U32 ;
typedef int U16 ;
struct TYPE_14__ {size_t num; size_t size; } ;
struct TYPE_13__ {scalar_t__ score; scalar_t__ begin; scalar_t__ end; } ;
struct TYPE_12__ {scalar_t__ samples; scalar_t__ nbDmers; } ;
typedef TYPE_2__ FASTCOVER_ctx_t ;
typedef TYPE_3__ COVER_segment_t ;
typedef TYPE_4__ COVER_epoch_info_t ;
typedef int BYTE ;


 TYPE_4__ COVER_computeEpochs (size_t,size_t,int ,int) ;
 int DISPLAYLEVEL (int,char*,...) ;
 int DISPLAYUPDATE (int,char*,unsigned int) ;
 TYPE_3__ FASTCOVER_selectSegment (TYPE_2__ const*,size_t*,size_t const,size_t const,TYPE_1__,int *) ;
 size_t MIN (scalar_t__,size_t) ;
 int memcpy (int * const,scalar_t__,size_t) ;

__attribute__((used)) static size_t
FASTCOVER_buildDictionary(const FASTCOVER_ctx_t* ctx,
                          U32* freqs,
                          void* dictBuffer, size_t dictBufferCapacity,
                          ZDICT_cover_params_t parameters,
                          U16* segmentFreqs)
{
  BYTE *const dict = (BYTE *)dictBuffer;
  size_t tail = dictBufferCapacity;

  const COVER_epoch_info_t epochs = COVER_computeEpochs(
      (U32)dictBufferCapacity, (U32)ctx->nbDmers, parameters.k, 1);
  const size_t maxZeroScoreRun = 10;
  size_t zeroScoreRun = 0;
  size_t epoch;
  DISPLAYLEVEL(2, "Breaking content into %u epochs of size %u\n",
                (U32)epochs.num, (U32)epochs.size);



  for (epoch = 0; tail > 0; epoch = (epoch + 1) % epochs.num) {
    const U32 epochBegin = (U32)(epoch * epochs.size);
    const U32 epochEnd = epochBegin + epochs.size;
    size_t segmentSize;

    COVER_segment_t segment = FASTCOVER_selectSegment(
        ctx, freqs, epochBegin, epochEnd, parameters, segmentFreqs);




    if (segment.score == 0) {
      if (++zeroScoreRun >= maxZeroScoreRun) {
          break;
      }
      continue;
    }
    zeroScoreRun = 0;


    segmentSize = MIN(segment.end - segment.begin + parameters.d - 1, tail);
    if (segmentSize < parameters.d) {
      break;
    }




    tail -= segmentSize;
    memcpy(dict + tail, ctx->samples + segment.begin, segmentSize);
    DISPLAYUPDATE(
        2, "\r%u%%       ",
        (unsigned)(((dictBufferCapacity - tail) * 100) / dictBufferCapacity));
  }
  DISPLAYLEVEL(2, "\r%79s\r", "");
  return tail;
}
