
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXM_THROW (int,char*,int ) ;
 scalar_t__ calloc (int,int) ;
 int errno ;
 char* extractFilename (char const*,char) ;
 int memcpy (char*,char const*,int) ;
 int strerror (int ) ;
 int strlen (char const*) ;

__attribute__((used)) static char*
FIO_createFilename_fromOutDir(const char* path, const char* outDirName, const size_t suffixLen)
{
    const char* filenameStart;
    char separator;
    char* result;




    separator = '/';


    filenameStart = extractFilename(path, separator);




    result = (char*) calloc(1, strlen(outDirName) + 1 + strlen(filenameStart) + suffixLen + 1);
    if (!result) {
        EXM_THROW(30, "zstd: FIO_createFilename_fromOutDir: %s", strerror(errno));
    }

    memcpy(result, outDirName, strlen(outDirName));
    if (outDirName[strlen(outDirName)-1] == separator) {
        memcpy(result + strlen(outDirName), filenameStart, strlen(filenameStart));
    } else {
        memcpy(result + strlen(outDirName), &separator, 1);
        memcpy(result + strlen(outDirName) + 1, filenameStart, strlen(filenameStart));
    }

    return result;
}
