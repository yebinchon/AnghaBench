
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cRess_t ;
typedef int ZSTD_compressionParameters ;
typedef int FIO_prefs_t ;


 int FIO_compressFilename_srcFile (int * const,int const,char const*,char const*,int) ;
 int FIO_createCResources (int * const,char const*,int,int ) ;
 int FIO_freeCResources (int const) ;

int FIO_compressFilename(FIO_prefs_t* const prefs, const char* dstFileName,
                         const char* srcFileName, const char* dictFileName,
                         int compressionLevel, ZSTD_compressionParameters comprParams)
{
    cRess_t const ress = FIO_createCResources(prefs, dictFileName, compressionLevel, comprParams);
    int const result = FIO_compressFilename_srcFile(prefs, ress, dstFileName, srcFileName, compressionLevel);


    FIO_freeCResources(ress);
    return result;
}
