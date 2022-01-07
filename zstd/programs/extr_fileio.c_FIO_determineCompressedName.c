
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXM_THROW (int,char*,int ) ;
 char* FIO_createFilename_fromOutDir (char const*,char const*,size_t const) ;
 int assert (int ) ;
 int errno ;
 int free (char*) ;
 scalar_t__ malloc (size_t) ;
 int memcpy (char*,char const*,size_t const) ;
 int strerror (int ) ;
 void* strlen (char const*) ;

__attribute__((used)) static const char*
FIO_determineCompressedName(const char* srcFileName, const char* outDirName, const char* suffix)
{
    static size_t dfnbCapacity = 0;
    static char* dstFileNameBuffer = ((void*)0);
    char* outDirFilename = ((void*)0);
    size_t sfnSize = strlen(srcFileName);
    size_t const srcSuffixLen = strlen(suffix);
    if (outDirName) {
        outDirFilename = FIO_createFilename_fromOutDir(srcFileName, outDirName, srcSuffixLen);
        sfnSize = strlen(outDirFilename);
        assert(outDirFilename != ((void*)0));
    }

    if (dfnbCapacity <= sfnSize+srcSuffixLen+1) {

        free(dstFileNameBuffer);
        dfnbCapacity = sfnSize + srcSuffixLen + 30;
        dstFileNameBuffer = (char*)malloc(dfnbCapacity);
        if (!dstFileNameBuffer) {
            EXM_THROW(30, "zstd: %s", strerror(errno));
        }
    }
    assert(dstFileNameBuffer != ((void*)0));

    if (outDirFilename) {
        memcpy(dstFileNameBuffer, outDirFilename, sfnSize);
        free(outDirFilename);
    } else {
        memcpy(dstFileNameBuffer, srcFileName, sfnSize);
    }
    memcpy(dstFileNameBuffer+sfnSize, suffix, srcSuffixLen+1 );
    return dstFileNameBuffer;
}
