
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {int Length; int Buffer; } ;
struct TYPE_6__ {scalar_t__ type; TYPE_1__ reparse_xattr; } ;
typedef TYPE_2__ fcb ;
typedef int ULONG ;
typedef int NTSTATUS ;


 scalar_t__ BTRFS_TYPE_DIRECTORY ;
 scalar_t__ BTRFS_TYPE_SYMLINK ;
 int ERR (char*,int ) ;
 int IO_REPARSE_TAG_SYMLINK ;
 int NT_SUCCESS (int ) ;
 int RtlCopyMemory (int *,int ,int) ;
 int read_file (TYPE_2__*,int *,int ,int,int *,int *) ;

ULONG get_reparse_tag_fcb(fcb* fcb) {
    ULONG tag;

    if (fcb->type == BTRFS_TYPE_SYMLINK)
        return IO_REPARSE_TAG_SYMLINK;
    else if (fcb->type == BTRFS_TYPE_DIRECTORY) {
        if (!fcb->reparse_xattr.Buffer || fcb->reparse_xattr.Length < sizeof(ULONG))
            return 0;

        RtlCopyMemory(&tag, fcb->reparse_xattr.Buffer, sizeof(ULONG));
    } else {
        NTSTATUS Status;
        ULONG br;

        Status = read_file(fcb, (uint8_t*)&tag, 0, sizeof(ULONG), &br, ((void*)0));
        if (!NT_SUCCESS(Status)) {
            ERR("read_file returned %08x\n", Status);
            return 0;
        }
    }

    return tag;
}
