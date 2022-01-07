
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t U64 ;
typedef int FILE ;


 int DISPLAYLEVEL (int,char*,char const* const) ;
 int DISPLAYUPDATE (int,char*,char const* const) ;
 int RETURN_ERROR_INT (int,char*,...) ;
 size_t UTIL_FILESIZE_UNKNOWN ;
 size_t UTIL_getFileSize (char const* const) ;
 scalar_t__ UTIL_isDirectory (char const* const) ;
 int fclose (int * const) ;
 int * fopen (char const* const,char*) ;
 size_t fread (char*,int,size_t,int * const) ;

__attribute__((used)) static int BMK_loadFiles(void* buffer, size_t bufferSize,
                         size_t* fileSizes,
                         const char* const * fileNamesTable, unsigned nbFiles,
                         int displayLevel)
{
    size_t pos = 0, totalSize = 0;
    unsigned n;
    for (n=0; n<nbFiles; n++) {
        U64 fileSize = UTIL_getFileSize(fileNamesTable[n]);
        if (UTIL_isDirectory(fileNamesTable[n])) {
            DISPLAYLEVEL(2, "Ignoring %s directory...       \n", fileNamesTable[n]);
            fileSizes[n] = 0;
            continue;
        }
        if (fileSize == UTIL_FILESIZE_UNKNOWN) {
            DISPLAYLEVEL(2, "Cannot evaluate size of %s, ignoring ... \n", fileNamesTable[n]);
            fileSizes[n] = 0;
            continue;
        }
        { FILE* const f = fopen(fileNamesTable[n], "rb");
            if (f==((void*)0)) RETURN_ERROR_INT(10, "impossible to open file %s", fileNamesTable[n]);
            DISPLAYUPDATE(2, "Loading %s...       \r", fileNamesTable[n]);
            if (fileSize > bufferSize-pos) fileSize = bufferSize-pos, nbFiles=n;
            { size_t const readSize = fread(((char*)buffer)+pos, 1, (size_t)fileSize, f);
                if (readSize != (size_t)fileSize) RETURN_ERROR_INT(11, "could not read %s", fileNamesTable[n]);
                pos += readSize;
            }
            fileSizes[n] = (size_t)fileSize;
            totalSize += (size_t)fileSize;
            fclose(f);
    } }

    if (totalSize == 0) RETURN_ERROR_INT(12, "no data to bench");
    return 0;
}
