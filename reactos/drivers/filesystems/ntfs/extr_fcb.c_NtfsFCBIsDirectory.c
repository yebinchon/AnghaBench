
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int FileAttributes; } ;
struct TYPE_5__ {TYPE_1__ Entry; } ;
typedef TYPE_2__* PNTFS_FCB ;
typedef int BOOLEAN ;


 int NTFS_FILE_TYPE_DIRECTORY ;

BOOLEAN
NtfsFCBIsDirectory(PNTFS_FCB Fcb)
{
    return ((Fcb->Entry.FileAttributes & NTFS_FILE_TYPE_DIRECTORY) == NTFS_FILE_TYPE_DIRECTORY);
}
