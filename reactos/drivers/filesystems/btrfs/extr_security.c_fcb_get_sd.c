
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct _fcb {int sd; } ;
struct TYPE_5__ {int st_gid; int st_uid; } ;
struct TYPE_6__ {scalar_t__ type; int sd; TYPE_1__ inode_item; int inode; int subvol; int Vcb; } ;
typedef TYPE_2__ fcb ;
typedef int ULONG ;
typedef int SECURITY_SUBJECT_CONTEXT ;
typedef int * PSID ;
typedef int PIRP ;
typedef int NTSTATUS ;


 scalar_t__ BTRFS_TYPE_DIRECTORY ;
 int EA_NTACL ;
 int EA_NTACL_HASH ;
 int ERR (char*,...) ;
 int ExFreePool (int *) ;
 int IoGetFileObjectGenericMapping () ;
 int NT_SUCCESS (int ) ;
 int PagedPool ;
 int RtlSetGroupSecurityDescriptor (int *,int *,int) ;
 int RtlSetOwnerSecurityDescriptor (int *,int *,int) ;
 int SEF_DACL_AUTO_INHERIT ;
 int SeAssignSecurityEx (int ,int *,void**,int *,int,int ,int *,int ,int ) ;
 int SeCaptureSubjectContext (int *) ;
 int get_top_level_sd (TYPE_2__*) ;
 scalar_t__ get_xattr (int ,int ,int ,int ,int ,int **,int *,int ) ;
 int gid_to_sid (int ,int **) ;
 int uid_to_sid (int ,int **) ;

void fcb_get_sd(fcb* fcb, struct _fcb* parent, bool look_for_xattr, PIRP Irp) {
    NTSTATUS Status;
    PSID usersid = ((void*)0), groupsid = ((void*)0);
    SECURITY_SUBJECT_CONTEXT subjcont;
    ULONG buflen;

    if (look_for_xattr && get_xattr(fcb->Vcb, fcb->subvol, fcb->inode, EA_NTACL, EA_NTACL_HASH, (uint8_t**)&fcb->sd, (uint16_t*)&buflen, Irp))
        return;

    if (!parent) {
        get_top_level_sd(fcb);
        return;
    }

    SeCaptureSubjectContext(&subjcont);

    Status = SeAssignSecurityEx(parent->sd, ((void*)0), (void**)&fcb->sd, ((void*)0), fcb->type == BTRFS_TYPE_DIRECTORY, SEF_DACL_AUTO_INHERIT,
                                &subjcont, IoGetFileObjectGenericMapping(), PagedPool);
    if (!NT_SUCCESS(Status)) {
        ERR("SeAssignSecurityEx returned %08x\n", Status);
        return;
    }

    Status = uid_to_sid(fcb->inode_item.st_uid, &usersid);
    if (!NT_SUCCESS(Status)) {
        ERR("uid_to_sid returned %08x\n", Status);
        return;
    }

    RtlSetOwnerSecurityDescriptor(&fcb->sd, usersid, 0);

    gid_to_sid(fcb->inode_item.st_gid, &groupsid);
    if (!groupsid) {
        ERR("out of memory\n");
        ExFreePool(usersid);
        return;
    }

    RtlSetGroupSecurityDescriptor(&fcb->sd, groupsid, 0);

    ExFreePool(usersid);
    ExFreePool(groupsid);
}
