
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dRess_t ;
typedef int FIO_prefs_t ;


 int FIO_createDResources (int * const,char const*) ;
 int FIO_decompressSrcFile (int * const,int const,char const*,char const*) ;
 int FIO_freeDResources (int const) ;

int FIO_decompressFilename(FIO_prefs_t* const prefs,
                           const char* dstFileName, const char* srcFileName,
                           const char* dictFileName)
{
    dRess_t const ress = FIO_createDResources(prefs, dictFileName);

    int const decodingError = FIO_decompressSrcFile(prefs, ress, dstFileName, srcFileName);

    FIO_freeDResources(ress);
    return decodingError;
}
