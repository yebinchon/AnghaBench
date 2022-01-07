
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CHECK_ZSTD (size_t const) ;
 size_t ZSTD_compress (void* const,size_t const,void* const,size_t,int) ;
 size_t ZSTD_compressBound (size_t) ;
 int free (void* const) ;
 void* mallocAndLoadFile_orDie (char const*,size_t*) ;
 void* malloc_orDie (size_t const) ;
 int printf (char*,char const*,unsigned int,unsigned int,char const*) ;
 int saveFile_orDie (char const*,void* const,size_t const) ;

__attribute__((used)) static void compress_orDie(const char* fname, const char* oname)
{
    size_t fSize;
    void* const fBuff = mallocAndLoadFile_orDie(fname, &fSize);
    size_t const cBuffSize = ZSTD_compressBound(fSize);
    void* const cBuff = malloc_orDie(cBuffSize);





    size_t const cSize = ZSTD_compress(cBuff, cBuffSize, fBuff, fSize, 1);
    CHECK_ZSTD(cSize);

    saveFile_orDie(oname, cBuff, cSize);


    printf("%25s : %6u -> %7u - %s \n", fname, (unsigned)fSize, (unsigned)cSize, oname);

    free(fBuff);
    free(cBuff);
}
