
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PFILE_RECORD_HEADER ;
typedef int * PFILENAME_ATTRIBUTE ;
typedef int PDEVICE_EXTENSION ;


 int * GetFileNameFromRecord (int ,int ,int ) ;
 int NTFS_FILE_NAME_DOS ;
 int NTFS_FILE_NAME_POSIX ;
 int NTFS_FILE_NAME_WIN32 ;

PFILENAME_ATTRIBUTE
GetBestFileNameFromRecord(PDEVICE_EXTENSION Vcb,
                          PFILE_RECORD_HEADER FileRecord)
{
    PFILENAME_ATTRIBUTE FileName;

    FileName = GetFileNameFromRecord(Vcb, FileRecord, NTFS_FILE_NAME_POSIX);
    if (FileName == ((void*)0))
    {
        FileName = GetFileNameFromRecord(Vcb, FileRecord, NTFS_FILE_NAME_WIN32);
        if (FileName == ((void*)0))
        {
            FileName = GetFileNameFromRecord(Vcb, FileRecord, NTFS_FILE_NAME_DOS);
        }
    }

    return FileName;
}
