
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_15__ {TYPE_5__* subvol; int inode; TYPE_3__* Vcb; } ;
typedef TYPE_6__ fcb ;
struct TYPE_13__ {int * Identifier; } ;
struct TYPE_16__ {TYPE_4__ FileId; int VolumeSerialNumber; } ;
struct TYPE_14__ {int id; } ;
struct TYPE_10__ {int * uuid; } ;
struct TYPE_11__ {TYPE_1__ uuid; } ;
struct TYPE_12__ {TYPE_2__ superblock; } ;
typedef int NTSTATUS ;
typedef int LONG ;
typedef TYPE_7__ FILE_ID_INFORMATION ;


 int RtlCopyMemory (int *,int *,int) ;
 int STATUS_SUCCESS ;

__attribute__((used)) static NTSTATUS fill_in_file_id_information(FILE_ID_INFORMATION* fii, fcb* fcb, LONG* length) {
    RtlCopyMemory(&fii->VolumeSerialNumber, &fcb->Vcb->superblock.uuid.uuid[8], sizeof(uint64_t));
    RtlCopyMemory(&fii->FileId.Identifier[0], &fcb->inode, sizeof(uint64_t));
    RtlCopyMemory(&fii->FileId.Identifier[sizeof(uint64_t)], &fcb->subvol->id, sizeof(uint64_t));

    *length -= sizeof(FILE_ID_INFORMATION);

    return STATUS_SUCCESS;
}
