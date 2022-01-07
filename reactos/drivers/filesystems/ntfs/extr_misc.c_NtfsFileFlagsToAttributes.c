
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int ULONG ;
typedef int* PULONG ;


 int FILE_ATTRIBUTE_DIRECTORY ;
 int FILE_ATTRIBUTE_NORMAL ;
 int NTFS_FILE_TYPE_DIRECTORY ;

VOID
NtfsFileFlagsToAttributes(ULONG NtfsAttributes,
                          PULONG FileAttributes)
{
    *FileAttributes = NtfsAttributes;
    if ((NtfsAttributes & NTFS_FILE_TYPE_DIRECTORY) == NTFS_FILE_TYPE_DIRECTORY)
    {
        *FileAttributes = NtfsAttributes & ~NTFS_FILE_TYPE_DIRECTORY;
        *FileAttributes |= FILE_ATTRIBUTE_DIRECTORY;
    }

    if (NtfsAttributes == 0)
        *FileAttributes = FILE_ATTRIBUTE_NORMAL;
}
