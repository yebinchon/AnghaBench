
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_3__ {int member_0; } ;
typedef TYPE_1__ SID_IDENTIFIER_AUTHORITY ;
typedef int * PRPC_SID ;
typedef int NTSTATUS ;


 int ERR (char*) ;
 int * RtlAllocateHeap (int ,int ,int ) ;
 int RtlGetProcessHeap () ;
 int RtlInitializeSid (int *,TYPE_1__*,int ) ;
 int RtlLengthRequiredSid (int ) ;
 int SECURITY_NT_AUTHORITY ;
 int STATUS_INSUFFICIENT_RESOURCES ;
 int STATUS_SUCCESS ;

__attribute__((used)) static
NTSTATUS
GetNtAuthorityDomainSid(PRPC_SID *Sid)
{
    SID_IDENTIFIER_AUTHORITY NtAuthority = {SECURITY_NT_AUTHORITY};
    ULONG Length = 0;

    Length = RtlLengthRequiredSid(0);
    *Sid = RtlAllocateHeap(RtlGetProcessHeap(), 0, Length);
    if (*Sid == ((void*)0))
    {
        ERR("Failed to allocate SID\n");
        return STATUS_INSUFFICIENT_RESOURCES;
    }

    RtlInitializeSid(*Sid,&NtAuthority, 0);

    return STATUS_SUCCESS;
}
