
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_9__ ;
typedef struct TYPE_24__ TYPE_8__ ;
typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_10__ ;


struct TYPE_24__ {int delete_on_close; TYPE_4__* parent; } ;
typedef TYPE_8__ file_ref ;
struct TYPE_22__ {int st_mode; int st_nlink; int st_size; } ;
struct TYPE_17__ {int Length; } ;
struct TYPE_25__ {TYPE_6__ inode_item; TYPE_1__ adsdata; scalar_t__ ads; } ;
typedef TYPE_9__ fcb ;
struct TYPE_23__ {int QuadPart; } ;
struct TYPE_21__ {int QuadPart; } ;
struct TYPE_20__ {TYPE_3__* fcb; } ;
struct TYPE_18__ {int st_nlink; } ;
struct TYPE_19__ {TYPE_2__ inode_item; } ;
struct TYPE_16__ {int Directory; int DeletePending; TYPE_7__ EndOfFile; int NumberOfLinks; TYPE_5__ AllocationSize; } ;
typedef int NTSTATUS ;
typedef int LONG ;
typedef TYPE_10__ FILE_STANDARD_INFORMATION ;


 int ERR (char*) ;
 int RtlZeroMemory (TYPE_10__*,int) ;
 int STATUS_INTERNAL_ERROR ;
 int STATUS_SUCCESS ;
 int S_ISDIR (int ) ;
 int TRACE (char*,int ) ;
 int fcb_alloc_size (TYPE_9__*) ;

__attribute__((used)) static NTSTATUS fill_in_file_standard_information(FILE_STANDARD_INFORMATION* fsi, fcb* fcb, file_ref* fileref, LONG* length) {
    RtlZeroMemory(fsi, sizeof(FILE_STANDARD_INFORMATION));

    *length -= sizeof(FILE_STANDARD_INFORMATION);

    if (fcb->ads) {
        if (!fileref || !fileref->parent) {
            ERR("no fileref for stream\n");
            return STATUS_INTERNAL_ERROR;
        }

        fsi->AllocationSize.QuadPart = fsi->EndOfFile.QuadPart = fcb->adsdata.Length;
        fsi->NumberOfLinks = fileref->parent->fcb->inode_item.st_nlink;
        fsi->Directory = 0;
    } else {
        fsi->AllocationSize.QuadPart = fcb_alloc_size(fcb);
        fsi->EndOfFile.QuadPart = S_ISDIR(fcb->inode_item.st_mode) ? 0 : fcb->inode_item.st_size;
        fsi->NumberOfLinks = fcb->inode_item.st_nlink;
        fsi->Directory = S_ISDIR(fcb->inode_item.st_mode);
    }

    TRACE("length = %I64u\n", fsi->EndOfFile.QuadPart);

    fsi->DeletePending = fileref ? fileref->delete_on_close : 0;

    return STATUS_SUCCESS;
}
