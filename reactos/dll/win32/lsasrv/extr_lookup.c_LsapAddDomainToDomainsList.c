
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t ULONG ;
struct TYPE_10__ {size_t Entries; TYPE_2__* Domains; } ;
struct TYPE_9__ {int MaximumLength; int Buffer; int Length; } ;
struct TYPE_7__ {int * Buffer; int MaximumLength; int Length; } ;
struct TYPE_8__ {TYPE_1__ Name; int * Sid; } ;
typedef TYPE_3__* PUNICODE_STRING ;
typedef size_t* PULONG ;
typedef int PSID ;
typedef TYPE_4__* PLSAPR_REFERENCED_DOMAIN_LIST ;
typedef int NTSTATUS ;


 void* MIDL_user_allocate (int ) ;
 int MIDL_user_free (int *) ;
 int RtlCopyMemory (int *,int ,int ) ;
 int RtlCopySid (int ,int *,int ) ;
 scalar_t__ RtlEqualSid (int ,int *) ;
 int RtlLengthSid (int ) ;
 int STATUS_INSUFFICIENT_RESOURCES ;
 int STATUS_SUCCESS ;

__attribute__((used)) static NTSTATUS
LsapAddDomainToDomainsList(PLSAPR_REFERENCED_DOMAIN_LIST ReferencedDomains,
                           PUNICODE_STRING Name,
                           PSID Sid,
                           PULONG Index)
{
    ULONG i;

    i = 0;
    while (i < ReferencedDomains->Entries &&
           ReferencedDomains->Domains[i].Sid != ((void*)0))
    {
        if (RtlEqualSid(Sid, ReferencedDomains->Domains[i].Sid))
        {
            *Index = i;
            return STATUS_SUCCESS;
        }

        i++;
    }

    ReferencedDomains->Domains[i].Sid = MIDL_user_allocate(RtlLengthSid(Sid));
    if (ReferencedDomains->Domains[i].Sid == ((void*)0))
        return STATUS_INSUFFICIENT_RESOURCES;

    RtlCopySid(RtlLengthSid(Sid), ReferencedDomains->Domains[i].Sid, Sid);

    ReferencedDomains->Domains[i].Name.Length = Name->Length;
    ReferencedDomains->Domains[i].Name.MaximumLength = Name->MaximumLength;
    ReferencedDomains->Domains[i].Name.Buffer = MIDL_user_allocate(Name->MaximumLength);
    if (ReferencedDomains->Domains[i].Name.Buffer == ((void*)0))
    {
        MIDL_user_free(ReferencedDomains->Domains[i].Sid);
        ReferencedDomains->Domains[i].Sid = ((void*)0);
        return STATUS_INSUFFICIENT_RESOURCES;
    }

    RtlCopyMemory(ReferencedDomains->Domains[i].Name.Buffer,
                  Name->Buffer,
                  Name->MaximumLength);

    ReferencedDomains->Entries++;
    *Index = i;

    return STATUS_SUCCESS;
}
