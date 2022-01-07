
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int nbFiles; int compressedSize; } ;
typedef TYPE_1__ fileInfo_t ;
typedef int InfoError ;
typedef int FILE ;


 int ERROR_IF (int ,int ,char*,char const*) ;
 int FIO_analyzeFrames (TYPE_1__*,int * const) ;
 int * FIO_openSrcFile (char const*) ;
 int UTIL_getFileSize (char const*) ;
 int fclose (int * const) ;
 int info_file_error ;

__attribute__((used)) static InfoError
getFileInfo_fileConfirmed(fileInfo_t* info, const char* inFileName)
{
    InfoError status;
    FILE* const srcFile = FIO_openSrcFile(inFileName);
    ERROR_IF(srcFile == ((void*)0), info_file_error, "Error: could not open source file %s", inFileName);

    info->compressedSize = UTIL_getFileSize(inFileName);
    status = FIO_analyzeFrames(info, srcFile);

    fclose(srcFile);
    info->nbFiles = 1;
    return status;
}
