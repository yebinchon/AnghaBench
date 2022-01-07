
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int st_mode; int st_gid; } ;
struct _fcb {TYPE_1__ inode_item; } ;
typedef size_t ULONG ;
struct TYPE_12__ {int PrimaryToken; } ;
struct TYPE_11__ {size_t GroupCount; TYPE_2__* Groups; int PrimaryGroup; int Owner; } ;
struct TYPE_10__ {int Sid; } ;
typedef TYPE_3__ TOKEN_PRIMARY_GROUP ;
typedef TYPE_3__ TOKEN_OWNER ;
typedef TYPE_3__ TOKEN_GROUPS ;
typedef TYPE_6__* PSECURITY_SUBJECT_CONTEXT ;
typedef int NTSTATUS ;


 int ERR (char*,int ) ;
 int ExAcquireResourceSharedLite (int *,int) ;
 int ExFreePool (TYPE_3__*) ;
 int ExReleaseResourceLite (int *) ;
 scalar_t__ IsListEmpty (int *) ;
 int NT_SUCCESS (int ) ;
 int S_ISGID ;
 int SeQueryInformationToken (int ,int ,void**) ;
 int TokenGroups ;
 int TokenOwner ;
 int TokenPrimaryGroup ;
 int gid_map_list ;
 int mapping_lock ;
 scalar_t__ search_for_gid (struct _fcb*,int ) ;

void find_gid(struct _fcb* fcb, struct _fcb* parfcb, PSECURITY_SUBJECT_CONTEXT subjcont) {
    NTSTATUS Status;
    TOKEN_OWNER* to;
    TOKEN_PRIMARY_GROUP* tpg;
    TOKEN_GROUPS* tg;

    if (parfcb && parfcb->inode_item.st_mode & S_ISGID) {
        fcb->inode_item.st_gid = parfcb->inode_item.st_gid;
        return;
    }

    ExAcquireResourceSharedLite(&mapping_lock, 1);

    if (!subjcont || !subjcont->PrimaryToken || IsListEmpty(&gid_map_list)) {
        ExReleaseResourceLite(&mapping_lock);
        return;
    }

    Status = SeQueryInformationToken(subjcont->PrimaryToken, TokenOwner, (void**)&to);
    if (!NT_SUCCESS(Status))
        ERR("SeQueryInformationToken returned %08x\n", Status);
    else {
        if (search_for_gid(fcb, to->Owner)) {
            ExReleaseResourceLite(&mapping_lock);
            ExFreePool(to);
            return;
        }

        ExFreePool(to);
    }

    Status = SeQueryInformationToken(subjcont->PrimaryToken, TokenPrimaryGroup, (void**)&tpg);
    if (!NT_SUCCESS(Status))
        ERR("SeQueryInformationToken returned %08x\n", Status);
    else {
        if (search_for_gid(fcb, tpg->PrimaryGroup)) {
            ExReleaseResourceLite(&mapping_lock);
            ExFreePool(tpg);
            return;
        }

        ExFreePool(tpg);
    }

    Status = SeQueryInformationToken(subjcont->PrimaryToken, TokenGroups, (void**)&tg);
    if (!NT_SUCCESS(Status))
        ERR("SeQueryInformationToken returned %08x\n", Status);
    else {
        ULONG i;

        for (i = 0; i < tg->GroupCount; i++) {
            if (search_for_gid(fcb, tg->Groups[i].Sid)) {
                ExReleaseResourceLite(&mapping_lock);
                ExFreePool(tg);
                return;
            }
        }

        ExFreePool(tg);
    }

    ExReleaseResourceLite(&mapping_lock);
}
