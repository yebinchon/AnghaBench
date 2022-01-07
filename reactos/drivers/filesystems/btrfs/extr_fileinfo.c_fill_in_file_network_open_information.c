
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_9__ ;
typedef struct TYPE_27__ TYPE_8__ ;
typedef struct TYPE_26__ TYPE_7__ ;
typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_11__ ;
typedef struct TYPE_18__ TYPE_10__ ;


struct TYPE_26__ {TYPE_4__* parent; } ;
typedef TYPE_7__ file_ref ;
struct TYPE_18__ {int st_size; int st_mode; int st_ctime; int st_mtime; int st_atime; int otime; } ;
struct TYPE_21__ {int Length; } ;
struct TYPE_27__ {scalar_t__ atts; TYPE_10__ inode_item; TYPE_2__ adsdata; scalar_t__ ads; TYPE_1__* Vcb; } ;
typedef TYPE_8__ fcb ;
struct TYPE_28__ {void* QuadPart; } ;
struct TYPE_25__ {int QuadPart; } ;
struct TYPE_24__ {int QuadPart; } ;
struct TYPE_23__ {TYPE_3__* fcb; } ;
struct TYPE_22__ {scalar_t__ atts; TYPE_10__ inode_item; } ;
struct TYPE_20__ {TYPE_8__* dummy_fcb; } ;
struct TYPE_19__ {void* FileAttributes; TYPE_6__ EndOfFile; TYPE_5__ AllocationSize; TYPE_9__ ChangeTime; TYPE_9__ LastWriteTime; TYPE_9__ LastAccessTime; TYPE_9__ CreationTime; } ;
typedef int NTSTATUS ;
typedef scalar_t__ LONG ;
typedef TYPE_9__ LARGE_INTEGER ;
typedef TYPE_10__ INODE_ITEM ;
typedef TYPE_11__ FILE_NETWORK_OPEN_INFORMATION ;


 int ERR (char*) ;
 void* FILE_ATTRIBUTE_NORMAL ;
 int KeQuerySystemTime (TYPE_9__*) ;
 int RtlZeroMemory (TYPE_11__*,int) ;
 int STATUS_BUFFER_OVERFLOW ;
 int STATUS_INTERNAL_ERROR ;
 int STATUS_SUCCESS ;
 scalar_t__ S_ISDIR (int ) ;
 int WARN (char*) ;
 int fcb_alloc_size (TYPE_8__*) ;
 void* unix_time_to_win (int *) ;

__attribute__((used)) static NTSTATUS fill_in_file_network_open_information(FILE_NETWORK_OPEN_INFORMATION* fnoi, fcb* fcb, file_ref* fileref, LONG* length) {
    INODE_ITEM* ii;

    if (*length < (LONG)sizeof(FILE_NETWORK_OPEN_INFORMATION)) {
        WARN("overflow\n");
        return STATUS_BUFFER_OVERFLOW;
    }

    RtlZeroMemory(fnoi, sizeof(FILE_NETWORK_OPEN_INFORMATION));

    *length -= sizeof(FILE_NETWORK_OPEN_INFORMATION);

    if (fcb->ads) {
        if (!fileref || !fileref->parent) {
            ERR("no fileref for stream\n");
            return STATUS_INTERNAL_ERROR;
        }

        ii = &fileref->parent->fcb->inode_item;
    } else
        ii = &fcb->inode_item;

    if (fcb == fcb->Vcb->dummy_fcb) {
        LARGE_INTEGER time;

        KeQuerySystemTime(&time);
        fnoi->CreationTime = fnoi->LastAccessTime = fnoi->LastWriteTime = fnoi->ChangeTime = time;
    } else {
        fnoi->CreationTime.QuadPart = unix_time_to_win(&ii->otime);
        fnoi->LastAccessTime.QuadPart = unix_time_to_win(&ii->st_atime);
        fnoi->LastWriteTime.QuadPart = unix_time_to_win(&ii->st_mtime);
        fnoi->ChangeTime.QuadPart = unix_time_to_win(&ii->st_ctime);
    }

    if (fcb->ads) {
        fnoi->AllocationSize.QuadPart = fnoi->EndOfFile.QuadPart = fcb->adsdata.Length;
        fnoi->FileAttributes = fileref->parent->fcb->atts == 0 ? FILE_ATTRIBUTE_NORMAL : fileref->parent->fcb->atts;
    } else {
        fnoi->AllocationSize.QuadPart = fcb_alloc_size(fcb);
        fnoi->EndOfFile.QuadPart = S_ISDIR(fcb->inode_item.st_mode) ? 0 : fcb->inode_item.st_size;
        fnoi->FileAttributes = fcb->atts == 0 ? FILE_ATTRIBUTE_NORMAL : fcb->atts;
    }

    return STATUS_SUCCESS;
}
