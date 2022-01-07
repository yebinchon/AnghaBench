
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ genType_e ;
struct TYPE_4__ {scalar_t__ srcStart; scalar_t__ src; scalar_t__ dataStart; scalar_t__ data; } ;
typedef TYPE_1__ frame_t ;
typedef int dictInfo ;
typedef int ZSTD_DCtx ;
typedef int U32 ;
typedef int BYTE ;


 int DECOMPRESSED_BUFFER ;
 size_t ERROR (int ) ;
 int GENERIC ;
 size_t MAX (size_t const,int) ;
 int MAX_DECOMPRESSED_SIZE ;
 int RAND (int*) ;
 int ZDICT_CONTENTSIZE_MIN ;
 int ZDICT_DICTSIZE_MIN ;
 int * ZSTD_createDCtx () ;
 size_t ZSTD_decompressBegin_usingDict (int * const,int * const,size_t const) ;
 size_t ZSTD_decompressBlock (int * const,int ,int ,scalar_t__,int) ;
 size_t ZSTD_decompress_usingDict (int * const,int ,int ,scalar_t__,int,int * const,size_t const) ;
 int ZSTD_freeDCtx (int * const) ;
 scalar_t__ ZSTD_isError (size_t) ;
 int corruption_detected ;
 int free (int * const) ;
 scalar_t__ genRandomDict (int const,int,size_t const,int * const) ;
 int generateCompressedBlock (int,TYPE_1__*,int ) ;
 int generateFrame (int,TYPE_1__*,int ) ;
 scalar_t__ gt_frame ;
 int initDictInfo (int,size_t const,int * const,int const) ;
 int * malloc (size_t const) ;
 scalar_t__ memcmp (int ,scalar_t__,int) ;

__attribute__((used)) static size_t testDecodeWithDict(U32 seed, genType_e genType)
{

    size_t const dictSize = RAND(&seed) % (10 << 20) + ZDICT_DICTSIZE_MIN + ZDICT_CONTENTSIZE_MIN;
    U32 const dictID = RAND(&seed);
    size_t errorDetected = 0;
    BYTE* const fullDict = malloc(dictSize);
    if (fullDict == ((void*)0)) {
        return ERROR(GENERIC);
    }


    if (genRandomDict(dictID, seed, dictSize, fullDict)) {
        errorDetected = ERROR(GENERIC);
        goto dictTestCleanup;
    }


    { frame_t fr;
        dictInfo info;
        ZSTD_DCtx* const dctx = ZSTD_createDCtx();
        size_t ret;


        { size_t const headerSize = MAX(dictSize/4, 256);
            size_t const dictContentSize = dictSize-headerSize;
            BYTE* const dictContent = fullDict+headerSize;
            info = initDictInfo(1, dictContentSize, dictContent, dictID);
        }


        if (genType == gt_frame) {

            generateFrame(seed, &fr, info);
            ret = ZSTD_decompress_usingDict(dctx, DECOMPRESSED_BUFFER, MAX_DECOMPRESSED_SIZE,
                                            fr.dataStart, (BYTE*)fr.data - (BYTE*)fr.dataStart,
                                            fullDict, dictSize);
        } else {

            generateCompressedBlock(seed, &fr, info);
            ret = ZSTD_decompressBegin_usingDict(dctx, fullDict, dictSize);
            if (ZSTD_isError(ret)) {
                errorDetected = ret;
                ZSTD_freeDCtx(dctx);
                goto dictTestCleanup;
            }
            ret = ZSTD_decompressBlock(dctx, DECOMPRESSED_BUFFER, MAX_DECOMPRESSED_SIZE,
                                       fr.dataStart, (BYTE*)fr.data - (BYTE*)fr.dataStart);
        }
        ZSTD_freeDCtx(dctx);

        if (ZSTD_isError(ret)) {
            errorDetected = ret;
            goto dictTestCleanup;
        }

        if (memcmp(DECOMPRESSED_BUFFER, fr.srcStart, (BYTE*)fr.src - (BYTE*)fr.srcStart) != 0) {
            errorDetected = ERROR(corruption_detected);
            goto dictTestCleanup;
        }
    }

dictTestCleanup:
    free(fullDict);
    return errorDetected;
}
