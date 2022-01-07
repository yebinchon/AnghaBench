
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int delete_on_close; } ;
typedef TYPE_2__ file_ref ;
struct TYPE_8__ {int st_nlink; } ;
struct TYPE_10__ {scalar_t__ type; int ads; TYPE_1__ inode_item; } ;
typedef TYPE_3__ fcb ;
struct TYPE_11__ {int DeletePending; int Directory; int TotalNumberOfLinks; int NumberOfAccessibleLinks; } ;
typedef int NTSTATUS ;
typedef int LONG ;
typedef TYPE_4__ FILE_STANDARD_LINK_INFORMATION ;


 scalar_t__ BTRFS_TYPE_DIRECTORY ;
 int STATUS_SUCCESS ;
 int TRACE (char*) ;

__attribute__((used)) static NTSTATUS fill_in_file_standard_link_information(FILE_STANDARD_LINK_INFORMATION* fsli, fcb* fcb, file_ref* fileref, LONG* length) {
    TRACE("FileStandardLinkInformation\n");



    fsli->NumberOfAccessibleLinks = fcb->inode_item.st_nlink;
    fsli->TotalNumberOfLinks = fcb->inode_item.st_nlink;
    fsli->DeletePending = fileref ? fileref->delete_on_close : 0;
    fsli->Directory = (!fcb->ads && fcb->type == BTRFS_TYPE_DIRECTORY) ? 1 : 0;

    *length -= sizeof(FILE_STANDARD_LINK_INFORMATION);

    return STATUS_SUCCESS;
}
