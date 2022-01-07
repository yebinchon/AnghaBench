
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ srcBufferLoaded; } ;
typedef TYPE_1__ dRess_t ;
struct TYPE_8__ {scalar_t__ removeSrcFile; } ;
typedef TYPE_2__ FIO_prefs_t ;
typedef int FILE ;


 int DISPLAYLEVEL (int,char*,char const*,...) ;
 int FIO_decompressDstFile (TYPE_2__* const,TYPE_1__,int *,char const*,char const*) ;
 int * FIO_openSrcFile (char const*) ;
 scalar_t__ FIO_remove (char const*) ;
 scalar_t__ UTIL_isDirectory (char const*) ;
 int clearHandler () ;
 int errno ;
 scalar_t__ fclose (int *) ;
 int stdinmark ;
 scalar_t__ strcmp (char const*,int ) ;
 int strerror (int ) ;

__attribute__((used)) static int FIO_decompressSrcFile(FIO_prefs_t* const prefs, dRess_t ress, const char* dstFileName, const char* srcFileName)
{
    FILE* srcFile;
    int result;

    if (UTIL_isDirectory(srcFileName)) {
        DISPLAYLEVEL(1, "zstd: %s is a directory -- ignored \n", srcFileName);
        return 1;
    }

    srcFile = FIO_openSrcFile(srcFileName);
    if (srcFile==((void*)0)) return 1;
    ress.srcBufferLoaded = 0;

    result = FIO_decompressDstFile(prefs, ress, srcFile, dstFileName, srcFileName);


    if (fclose(srcFile)) {
        DISPLAYLEVEL(1, "zstd: %s: %s \n", srcFileName, strerror(errno));
        return 1;
    }
    if ( prefs->removeSrcFile
      && (result==0)
      && strcmp(srcFileName, stdinmark) ) {



        clearHandler();
        if (FIO_remove(srcFileName)) {

            DISPLAYLEVEL(1, "zstd: %s: %s \n", srcFileName, strerror(errno));
            return 1;
    } }
    return result;
}
