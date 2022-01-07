
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ clock_t ;
typedef int cRess_t ;
typedef int UTIL_time_t ;
typedef int U64 ;
struct TYPE_4__ {int compressionType; int checksumFlag; } ;
typedef TYPE_1__ FIO_prefs_t ;


 double CLOCKS_PER_SEC ;
 int DISPLAYLEVEL (int,char*,char const*,...) ;
 int EXM_THROW (int,char*,char const*) ;
 int FIO_compressGzFrame (int *,char const*,int const,int,int*) ;
 int FIO_compressLz4Frame (int *,char const*,int const,int,int ,int*) ;
 int FIO_compressLzmaFrame (int *,char const*,int const,int,int*,int) ;
 int FIO_compressZstdFrame (TYPE_1__* const,int *,char const*,int const,int,int*) ;





 int UTIL_clockSpanNano (int const) ;
 int UTIL_getFileSize (char const*) ;
 int UTIL_getTime () ;
 scalar_t__ clock () ;

__attribute__((used)) static int
FIO_compressFilename_internal(FIO_prefs_t* const prefs,
                              cRess_t ress,
                              const char* dstFileName, const char* srcFileName,
                              int compressionLevel)
{
    UTIL_time_t const timeStart = UTIL_getTime();
    clock_t const cpuStart = clock();
    U64 readsize = 0;
    U64 compressedfilesize = 0;
    U64 const fileSize = UTIL_getFileSize(srcFileName);
    DISPLAYLEVEL(5, "%s: %u bytes \n", srcFileName, (unsigned)fileSize);


    switch (prefs->compressionType) {
        default:
        case 128:
            compressedfilesize = FIO_compressZstdFrame(prefs, &ress, srcFileName, fileSize, compressionLevel, &readsize);
            break;

        case 132:



            (void)compressionLevel;
            EXM_THROW(20, "zstd: %s: file cannot be compressed as gzip (zstd compiled without ZSTD_GZCOMPRESS) -- ignored \n",
                            srcFileName);

            break;

        case 129:
        case 130:



            (void)compressionLevel;
            EXM_THROW(20, "zstd: %s: file cannot be compressed as xz/lzma (zstd compiled without ZSTD_LZMACOMPRESS) -- ignored \n",
                            srcFileName);

            break;

        case 131:



            (void)compressionLevel;
            EXM_THROW(20, "zstd: %s: file cannot be compressed as lz4 (zstd compiled without ZSTD_LZ4COMPRESS) -- ignored \n",
                            srcFileName);

            break;
    }


    DISPLAYLEVEL(2, "\r%79s\r", "");
    DISPLAYLEVEL(2,"%-20s :%6.2f%%   (%6llu => %6llu bytes, %s) \n",
        srcFileName,
        (double)compressedfilesize / (readsize+(!readsize) ) * 100,
        (unsigned long long)readsize, (unsigned long long) compressedfilesize,
         dstFileName);


    { clock_t const cpuEnd = clock();
        double const cpuLoad_s = (double)(cpuEnd - cpuStart) / CLOCKS_PER_SEC;
        U64 const timeLength_ns = UTIL_clockSpanNano(timeStart);
        double const timeLength_s = (double)timeLength_ns / 1000000000;
        double const cpuLoad_pct = (cpuLoad_s / timeLength_s) * 100;
        DISPLAYLEVEL(4, "%-20s : Completed in %.2f sec  (cpu load : %.0f%%)\n",
                        srcFileName, timeLength_s, cpuLoad_pct);
    }
    return 0;
}
