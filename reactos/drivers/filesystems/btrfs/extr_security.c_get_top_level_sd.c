
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int st_gid; int st_uid; } ;
struct TYPE_5__ {int * sd; TYPE_1__ inode_item; } ;
typedef TYPE_2__ fcb ;
typedef scalar_t__ ULONG ;
typedef int SECURITY_DESCRIPTOR ;
typedef int * PSID ;
typedef scalar_t__ NTSTATUS ;
typedef int ACL ;


 int ALLOC_TAG ;
 int ERR (char*,...) ;
 int * ExAllocatePoolWithTag (int ,scalar_t__,int ) ;
 int ExFreePool (int *) ;
 int NT_SUCCESS (scalar_t__) ;
 int PagedPool ;
 scalar_t__ RtlAbsoluteToSelfRelativeSD (int *,int *,scalar_t__*) ;
 scalar_t__ RtlCreateSecurityDescriptor (int *,int ) ;
 scalar_t__ RtlSetDaclSecurityDescriptor (int *,int,int *,int) ;
 scalar_t__ RtlSetGroupSecurityDescriptor (int *,int *,int) ;
 scalar_t__ RtlSetOwnerSecurityDescriptor (int *,int *,int) ;
 int SECURITY_DESCRIPTOR_REVISION ;
 scalar_t__ STATUS_BUFFER_TOO_SMALL ;
 scalar_t__ STATUS_SUCCESS ;
 int TRACE (char*) ;
 int gid_to_sid (int ,int **) ;
 int * load_default_acl () ;
 scalar_t__ uid_to_sid (int ,int **) ;

__attribute__((used)) static void get_top_level_sd(fcb* fcb) {
    NTSTATUS Status;
    SECURITY_DESCRIPTOR sd;
    ULONG buflen;
    ACL* acl = ((void*)0);
    PSID usersid = ((void*)0), groupsid = ((void*)0);

    Status = RtlCreateSecurityDescriptor(&sd, SECURITY_DESCRIPTOR_REVISION);

    if (!NT_SUCCESS(Status)) {
        ERR("RtlCreateSecurityDescriptor returned %08x\n", Status);
        goto end;
    }

    Status = uid_to_sid(fcb->inode_item.st_uid, &usersid);
    if (!NT_SUCCESS(Status)) {
        ERR("uid_to_sid returned %08x\n", Status);
        goto end;
    }

    Status = RtlSetOwnerSecurityDescriptor(&sd, usersid, 0);

    if (!NT_SUCCESS(Status)) {
        ERR("RtlSetOwnerSecurityDescriptor returned %08x\n", Status);
        goto end;
    }

    gid_to_sid(fcb->inode_item.st_gid, &groupsid);
    if (!groupsid) {
        ERR("out of memory\n");
        goto end;
    }

    Status = RtlSetGroupSecurityDescriptor(&sd, groupsid, 0);

    if (!NT_SUCCESS(Status)) {
        ERR("RtlSetGroupSecurityDescriptor returned %08x\n", Status);
        goto end;
    }

    acl = load_default_acl();

    if (!acl) {
        ERR("out of memory\n");
        goto end;
    }

    Status = RtlSetDaclSecurityDescriptor(&sd, 1, acl, 0);

    if (!NT_SUCCESS(Status)) {
        ERR("RtlSetDaclSecurityDescriptor returned %08x\n", Status);
        goto end;
    }



    buflen = 0;


    Status = RtlAbsoluteToSelfRelativeSD(&sd, ((void*)0), &buflen);
    if (Status != STATUS_SUCCESS && Status != STATUS_BUFFER_TOO_SMALL) {
        ERR("RtlAbsoluteToSelfRelativeSD 1 returned %08x\n", Status);
        goto end;
    }

    if (buflen == 0 || Status == STATUS_SUCCESS) {
        TRACE("RtlAbsoluteToSelfRelativeSD said SD is zero-length\n");
        goto end;
    }

    fcb->sd = ExAllocatePoolWithTag(PagedPool, buflen, ALLOC_TAG);
    if (!fcb->sd) {
        ERR("out of memory\n");
        goto end;
    }

    Status = RtlAbsoluteToSelfRelativeSD(&sd, fcb->sd, &buflen);

    if (!NT_SUCCESS(Status)) {
        ERR("RtlAbsoluteToSelfRelativeSD 2 returned %08x\n", Status);
        ExFreePool(fcb->sd);
        fcb->sd = ((void*)0);
        goto end;
    }

end:
    if (acl)
        ExFreePool(acl);

    if (usersid)
        ExFreePool(usersid);

    if (groupsid)
        ExFreePool(groupsid);
}
