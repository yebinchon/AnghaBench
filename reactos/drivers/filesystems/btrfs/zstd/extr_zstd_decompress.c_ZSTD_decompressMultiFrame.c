
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int ZSTD_DDict ;
struct TYPE_7__ {scalar_t__ staticSize; } ;
typedef TYPE_1__ ZSTD_DCtx ;
typedef int U32 ;
typedef void BYTE ;


 int CHECK_F (int ) ;
 int DEBUGLOG (int,char*,...) ;
 size_t ERROR (int ) ;
 int MEM_readLE32 (void const*) ;
 void* ZSTD_DDictDictContent (int const*) ;
 size_t ZSTD_DDictDictSize (int const*) ;
 int ZSTD_FRAMEIDSIZE ;
 scalar_t__ ZSTD_MAGICNUMBER ;
 int const ZSTD_MAGIC_SKIPPABLE_START ;
 int ZSTD_checkContinuity (TYPE_1__*,void*) ;
 int ZSTD_decompressBegin_usingDDict (TYPE_1__*,int const*) ;
 int ZSTD_decompressBegin_usingDict (TYPE_1__*,void const*,size_t) ;
 size_t ZSTD_decompressFrame (TYPE_1__*,void*,size_t,void const**,size_t*) ;
 size_t ZSTD_decompressLegacy (void*,size_t,void const*,size_t const,void const*,size_t) ;
 scalar_t__ ZSTD_error_prefix_unknown ;
 size_t ZSTD_findFrameCompressedSizeLegacy (void const*,size_t) ;
 size_t ZSTD_frameHeaderSize_prefix ;
 scalar_t__ ZSTD_getErrorCode (size_t const) ;
 scalar_t__ ZSTD_isError (size_t const) ;
 scalar_t__ ZSTD_isLegacy (void const*,size_t) ;
 size_t ZSTD_skippableHeaderSize ;
 int assert (int) ;
 int memory_allocation ;
 int srcSize_wrong ;

__attribute__((used)) static size_t ZSTD_decompressMultiFrame(ZSTD_DCtx* dctx,
                                        void* dst, size_t dstCapacity,
                                  const void* src, size_t srcSize,
                                  const void* dict, size_t dictSize,
                                  const ZSTD_DDict* ddict)
{
    void* const dststart = dst;
    int moreThan1Frame = 0;

    DEBUGLOG(5, "ZSTD_decompressMultiFrame");
    assert(dict==((void*)0) || ddict==((void*)0));

    if (ddict) {
        dict = ZSTD_DDictDictContent(ddict);
        dictSize = ZSTD_DDictDictSize(ddict);
    }

    while (srcSize >= ZSTD_frameHeaderSize_prefix) {
        { U32 const magicNumber = MEM_readLE32(src);
            DEBUGLOG(4, "reading magic number %08X (expecting %08X)",
                        (U32)magicNumber, (U32)ZSTD_MAGICNUMBER);
            if ((magicNumber & 0xFFFFFFF0U) == ZSTD_MAGIC_SKIPPABLE_START) {
                size_t skippableSize;
                if (srcSize < ZSTD_skippableHeaderSize)
                    return ERROR(srcSize_wrong);
                skippableSize = MEM_readLE32((const BYTE*)src + ZSTD_FRAMEIDSIZE)
                              + ZSTD_skippableHeaderSize;
                if (srcSize < skippableSize) return ERROR(srcSize_wrong);

                src = (const BYTE *)src + skippableSize;
                srcSize -= skippableSize;
                continue;
        } }

        if (ddict) {

            CHECK_F(ZSTD_decompressBegin_usingDDict(dctx, ddict));
        } else {


            CHECK_F(ZSTD_decompressBegin_usingDict(dctx, dict, dictSize));
        }
        ZSTD_checkContinuity(dctx, dst);

        { const size_t res = ZSTD_decompressFrame(dctx, dst, dstCapacity,
                                                    &src, &srcSize);
            if ( (ZSTD_getErrorCode(res) == ZSTD_error_prefix_unknown)
              && (moreThan1Frame==1) ) {
                return ERROR(srcSize_wrong);
            }
            if (ZSTD_isError(res)) return res;

            dst = (BYTE*)dst + res;
            dstCapacity -= res;
        }
        moreThan1Frame = 1;
    }

    if (srcSize) return ERROR(srcSize_wrong);

    return (BYTE*)dst - (BYTE*)dststart;
}
