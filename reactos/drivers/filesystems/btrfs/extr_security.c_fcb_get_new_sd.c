
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {TYPE_6__* fcb; } ;
typedef TYPE_2__ file_ref ;
struct TYPE_10__ {int st_uid; } ;
struct TYPE_12__ {scalar_t__ type; TYPE_1__ inode_item; int sd; } ;
typedef TYPE_3__ fcb ;
struct TYPE_14__ {int * sd; } ;
struct TYPE_13__ {int SubjectSecurityContext; int SecurityDescriptor; } ;
typedef int PSID ;
typedef int NTSTATUS ;
typedef int BOOLEAN ;
typedef TYPE_4__ ACCESS_STATE ;


 scalar_t__ BTRFS_TYPE_DIRECTORY ;
 int ERR (char*,int ) ;
 int IoGetFileObjectGenericMapping () ;
 int NT_SUCCESS (int ) ;
 int PagedPool ;
 int RtlGetOwnerSecurityDescriptor (int ,int *,int *) ;
 int SEF_SACL_AUTO_INHERIT ;
 int STATUS_SUCCESS ;
 int SeAssignSecurityEx (int *,int ,void**,int *,int,int ,int *,int ,int ) ;
 int UID_NOBODY ;
 int find_gid (TYPE_3__*,TYPE_6__*,int *) ;
 int sid_to_uid (int ) ;

NTSTATUS fcb_get_new_sd(fcb* fcb, file_ref* parfileref, ACCESS_STATE* as) {
    NTSTATUS Status;
    PSID owner;
    BOOLEAN defaulted;

    Status = SeAssignSecurityEx(parfileref ? parfileref->fcb->sd : ((void*)0), as->SecurityDescriptor, (void**)&fcb->sd, ((void*)0), fcb->type == BTRFS_TYPE_DIRECTORY,
                                SEF_SACL_AUTO_INHERIT, &as->SubjectSecurityContext, IoGetFileObjectGenericMapping(), PagedPool);

    if (!NT_SUCCESS(Status)) {
        ERR("SeAssignSecurityEx returned %08x\n", Status);
        return Status;
    }

    Status = RtlGetOwnerSecurityDescriptor(fcb->sd, &owner, &defaulted);
    if (!NT_SUCCESS(Status)) {
        ERR("RtlGetOwnerSecurityDescriptor returned %08x\n", Status);
        fcb->inode_item.st_uid = UID_NOBODY;
    } else {
        fcb->inode_item.st_uid = sid_to_uid(owner);
    }

    find_gid(fcb, parfileref ? parfileref->fcb : ((void*)0), &as->SubjectSecurityContext);

    return STATUS_SUCCESS;
}
