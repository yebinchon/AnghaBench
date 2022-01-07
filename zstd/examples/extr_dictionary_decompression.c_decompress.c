
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTD_DDict ;
typedef int ZSTD_DCtx ;


 int CHECK (int,char*,...) ;
 int CHECK_ZSTD (size_t const) ;
 unsigned long long const ZSTD_CONTENTSIZE_ERROR ;
 unsigned long long const ZSTD_CONTENTSIZE_UNKNOWN ;
 int * ZSTD_createDCtx () ;
 size_t ZSTD_decompress_usingDDict (int * const,void* const,unsigned long long const,void* const,size_t,int const*) ;
 int ZSTD_freeDCtx (int * const) ;
 unsigned int ZSTD_getDictID_fromDDict (int const*) ;
 unsigned int ZSTD_getDictID_fromFrame (void* const,size_t) ;
 unsigned long long ZSTD_getFrameContentSize (void* const,size_t) ;
 int free (void* const) ;
 void* mallocAndLoadFile_orDie (char const*,size_t*) ;
 void* malloc_orDie (size_t) ;
 int printf (char*,char const*,unsigned int,unsigned int) ;

__attribute__((used)) static void decompress(const char* fname, const ZSTD_DDict* ddict)
{
    size_t cSize;
    void* const cBuff = mallocAndLoadFile_orDie(fname, &cSize);






    unsigned long long const rSize = ZSTD_getFrameContentSize(cBuff, cSize);
    CHECK(rSize != ZSTD_CONTENTSIZE_ERROR, "%s: not compressed by zstd!", fname);
    CHECK(rSize != ZSTD_CONTENTSIZE_UNKNOWN, "%s: original size unknown!", fname);
    void* const rBuff = malloc_orDie((size_t)rSize);






    unsigned const expectedDictID = ZSTD_getDictID_fromDDict(ddict);
    unsigned const actualDictID = ZSTD_getDictID_fromFrame(cBuff, cSize);
    CHECK(actualDictID == expectedDictID,
          "DictID mismatch: expected %u got %u",
          expectedDictID,
          actualDictID);






    ZSTD_DCtx* const dctx = ZSTD_createDCtx();
    CHECK(dctx != ((void*)0), "ZSTD_createDCtx() failed!");
    size_t const dSize = ZSTD_decompress_usingDDict(dctx, rBuff, rSize, cBuff, cSize, ddict);
    CHECK_ZSTD(dSize);

    CHECK(dSize == rSize, "Impossible because zstd will check this condition!");


    printf("%25s : %6u -> %7u \n", fname, (unsigned)cSize, (unsigned)rSize);

    ZSTD_freeDCtx(dctx);
    free(rBuff);
    free(cBuff);
}
