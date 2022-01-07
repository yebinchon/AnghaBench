
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_15__ {scalar_t__ pos; scalar_t__ size; scalar_t__ capacity; TYPE_1__* seq; } ;
typedef TYPE_2__ rawSeqStore_t ;
struct TYPE_18__ {int const* nextSrc; } ;
struct TYPE_16__ {TYPE_5__ window; int hashTable; } ;
typedef TYPE_3__ ldmState_t ;
struct TYPE_17__ {unsigned int windowLog; unsigned int hashLog; } ;
typedef TYPE_4__ ldmParams_t ;
typedef unsigned int U32 ;
struct TYPE_14__ {int litLength; } ;
typedef int BYTE ;


 size_t const ZSTD_CHUNKSIZE_MAX ;
 scalar_t__ ZSTD_isError (size_t) ;
 size_t ZSTD_ldm_generateSequences_internal (TYPE_3__*,TYPE_2__*,TYPE_4__ const*,int const* const,size_t const) ;
 int ZSTD_ldm_reduceTable (int ,unsigned int const,unsigned int const) ;
 unsigned int ZSTD_window_correctOverflow (TYPE_5__*,int ,unsigned int const,int const* const) ;
 int ZSTD_window_enforceMaxDist (TYPE_5__*,int const* const,unsigned int const,int *,int *) ;
 scalar_t__ ZSTD_window_needOverflowCorrection (TYPE_5__,int const* const) ;
 int assert (int) ;

size_t ZSTD_ldm_generateSequences(
        ldmState_t* ldmState, rawSeqStore_t* sequences,
        ldmParams_t const* params, void const* src, size_t srcSize)
{
    U32 const maxDist = 1U << params->windowLog;
    BYTE const* const istart = (BYTE const*)src;
    BYTE const* const iend = istart + srcSize;
    size_t const kMaxChunkSize = 1 << 20;
    size_t const nbChunks = (srcSize / kMaxChunkSize) + ((srcSize % kMaxChunkSize) != 0);
    size_t chunk;
    size_t leftoverSize = 0;

    assert(ZSTD_CHUNKSIZE_MAX >= kMaxChunkSize);



    assert(ldmState->window.nextSrc >= (BYTE const*)src + srcSize);



    assert(sequences->pos <= sequences->size);
    assert(sequences->size <= sequences->capacity);
    for (chunk = 0; chunk < nbChunks && sequences->size < sequences->capacity; ++chunk) {
        BYTE const* const chunkStart = istart + chunk * kMaxChunkSize;
        size_t const remaining = (size_t)(iend - chunkStart);
        BYTE const *const chunkEnd =
            (remaining < kMaxChunkSize) ? iend : chunkStart + kMaxChunkSize;
        size_t const chunkSize = chunkEnd - chunkStart;
        size_t newLeftoverSize;
        size_t const prevSize = sequences->size;

        assert(chunkStart < iend);

        if (ZSTD_window_needOverflowCorrection(ldmState->window, chunkEnd)) {
            U32 const ldmHSize = 1U << params->hashLog;
            U32 const correction = ZSTD_window_correctOverflow(
                &ldmState->window, 0, maxDist, chunkStart);
            ZSTD_ldm_reduceTable(ldmState->hashTable, ldmHSize, correction);
        }
        ZSTD_window_enforceMaxDist(&ldmState->window, chunkEnd, maxDist, ((void*)0), ((void*)0));

        newLeftoverSize = ZSTD_ldm_generateSequences_internal(
            ldmState, sequences, params, chunkStart, chunkSize);
        if (ZSTD_isError(newLeftoverSize))
            return newLeftoverSize;





        if (prevSize < sequences->size) {
            sequences->seq[prevSize].litLength += (U32)leftoverSize;
            leftoverSize = newLeftoverSize;
        } else {
            assert(newLeftoverSize == chunkSize);
            leftoverSize += chunkSize;
        }
    }
    return 0;
}
