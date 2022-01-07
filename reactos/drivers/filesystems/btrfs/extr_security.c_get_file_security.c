
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* parent; } ;
typedef TYPE_2__ file_ref ;
struct TYPE_9__ {int sd; scalar_t__ ads; } ;
typedef TYPE_3__ fcb ;
struct TYPE_10__ {TYPE_2__* fileref; } ;
typedef TYPE_4__ ccb ;
typedef int ULONG ;
struct TYPE_11__ {TYPE_4__* FsContext2; TYPE_3__* FsContext; } ;
struct TYPE_7__ {TYPE_3__* fcb; } ;
typedef int SECURITY_INFORMATION ;
typedef int SECURITY_DESCRIPTOR ;
typedef TYPE_5__* PFILE_OBJECT ;
typedef scalar_t__ NTSTATUS ;


 int ERR (char*,...) ;
 int NT_SUCCESS (scalar_t__) ;
 scalar_t__ STATUS_BUFFER_TOO_SMALL ;
 scalar_t__ STATUS_INTERNAL_ERROR ;
 scalar_t__ SeQuerySecurityDescriptorInfo (int *,int *,int *,void**) ;
 int TRACE (char*,scalar_t__) ;

__attribute__((used)) static NTSTATUS get_file_security(PFILE_OBJECT FileObject, SECURITY_DESCRIPTOR* relsd, ULONG* buflen, SECURITY_INFORMATION flags) {
    NTSTATUS Status;
    fcb* fcb = FileObject->FsContext;
    ccb* ccb = FileObject->FsContext2;
    file_ref* fileref = ccb ? ccb->fileref : ((void*)0);

    if (fcb->ads) {
        if (fileref && fileref->parent)
            fcb = fileref->parent->fcb;
        else {
            ERR("could not get parent fcb for stream\n");
            return STATUS_INTERNAL_ERROR;
        }
    }


    Status = SeQuerySecurityDescriptorInfo(&flags, relsd, buflen, (void**)&fcb->sd);

    if (Status == STATUS_BUFFER_TOO_SMALL)
        TRACE("SeQuerySecurityDescriptorInfo returned %08x\n", Status);
    else if (!NT_SUCCESS(Status))
        ERR("SeQuerySecurityDescriptorInfo returned %08x\n", Status);

    return Status;
}
