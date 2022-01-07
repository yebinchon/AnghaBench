
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ dstFile; } ;
typedef TYPE_1__ dRess_t ;
struct TYPE_11__ {int testMode; } ;
typedef TYPE_2__ FIO_prefs_t ;


 int EXM_THROW (int,char*,char const*) ;
 int FIO_checkFilenameCollisions (char const**,unsigned int) ;
 TYPE_1__ FIO_createDResources (TYPE_2__* const,char const*) ;
 int FIO_decompressSrcFile (TYPE_2__* const,TYPE_1__,char const* const,char const* const) ;
 char* FIO_determineDstName (char const* const,char const*) ;
 int FIO_freeDResources (TYPE_1__) ;
 scalar_t__ FIO_openDstFile (TYPE_2__* const,int *,char const*) ;
 int errno ;
 scalar_t__ fclose (scalar_t__) ;
 char const* strerror (int ) ;

int
FIO_decompressMultipleFilenames(FIO_prefs_t* const prefs,
                                const char** srcNamesTable, unsigned nbFiles,
                                const char* outDirName, const char* outFileName,
                                const char* dictFileName)
{
    int error = 0;
    dRess_t ress = FIO_createDResources(prefs, dictFileName);

    if (outFileName) {
        unsigned u;
        if (!prefs->testMode) {
            ress.dstFile = FIO_openDstFile(prefs, ((void*)0), outFileName);
            if (ress.dstFile == 0) EXM_THROW(19, "cannot open %s", outFileName);
        }
        for (u=0; u<nbFiles; u++)
            error |= FIO_decompressSrcFile(prefs, ress, outFileName, srcNamesTable[u]);
        if ((!prefs->testMode) && (fclose(ress.dstFile)))
            EXM_THROW(72, "Write error : %s : cannot properly close output file",
                        strerror(errno));
    } else {
        unsigned u;
        for (u=0; u<nbFiles; u++) {
            const char* const srcFileName = srcNamesTable[u];
            const char* const dstFileName = FIO_determineDstName(srcFileName, outDirName);
            if (dstFileName == ((void*)0)) { error=1; continue; }

            error |= FIO_decompressSrcFile(prefs, ress, dstFileName, srcFileName);
        }
        if (outDirName)
            FIO_checkFilenameCollisions(srcNamesTable ,nbFiles);
    }

    FIO_freeDResources(ress);
    return error;
}
