
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTD_CDict ;
typedef int ZSTD_CCtx ;


 int CHECK (int ,char*) ;
 int CHECK_ZSTD (size_t const) ;
 size_t ZSTD_compressBound (size_t) ;
 size_t ZSTD_compress_usingCDict (int * const,void* const,size_t const,void* const,size_t,int const*) ;
 int * ZSTD_createCCtx () ;
 int ZSTD_freeCCtx (int * const) ;
 int free (void* const) ;
 void* mallocAndLoadFile_orDie (char const*,size_t*) ;
 void* malloc_orDie (size_t const) ;
 int printf (char*,char const*,unsigned int,unsigned int,char const*) ;
 int saveFile_orDie (char const*,void* const,size_t const) ;

__attribute__((used)) static void compress(const char* fname, const char* oname, const ZSTD_CDict* cdict)
{
    size_t fSize;
    void* const fBuff = mallocAndLoadFile_orDie(fname, &fSize);
    size_t const cBuffSize = ZSTD_compressBound(fSize);
    void* const cBuff = malloc_orDie(cBuffSize);







    ZSTD_CCtx* const cctx = ZSTD_createCCtx();
    CHECK(cctx != ((void*)0), "ZSTD_createCCtx() failed!");
    size_t const cSize = ZSTD_compress_usingCDict(cctx, cBuff, cBuffSize, fBuff, fSize, cdict);
    CHECK_ZSTD(cSize);

    saveFile_orDie(oname, cBuff, cSize);


    printf("%25s : %6u -> %7u - %s \n", fname, (unsigned)fSize, (unsigned)cSize, oname);

    ZSTD_freeCCtx(cctx);
    free(fBuff);
    free(cBuff);
}
