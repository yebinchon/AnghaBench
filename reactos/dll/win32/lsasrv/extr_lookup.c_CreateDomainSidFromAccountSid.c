
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ULONG ;
typedef scalar_t__ UCHAR ;
typedef int * PULONG ;
typedef int * PSID ;


 int * MIDL_user_allocate (scalar_t__) ;
 int RtlIdentifierAuthoritySid (int *) ;
 int RtlInitializeSid (int *,int ,scalar_t__) ;
 scalar_t__ RtlLengthRequiredSid (scalar_t__) ;
 scalar_t__* RtlSubAuthorityCountSid (int *) ;
 int * RtlSubAuthoritySid (int *,scalar_t__) ;

__attribute__((used)) static PSID
CreateDomainSidFromAccountSid(PSID AccountSid)
{
    UCHAR RidCount;
    PSID DomainSid;
    ULONG i;
    ULONG DstSidSize;
    PULONG p, q;

    RidCount = *RtlSubAuthorityCountSid(AccountSid);
    if (RidCount > 0)
        RidCount--;

    DstSidSize = RtlLengthRequiredSid(RidCount);

    DomainSid = MIDL_user_allocate(DstSidSize);
    if (DomainSid == ((void*)0))
        return ((void*)0);

    RtlInitializeSid(DomainSid,
                     RtlIdentifierAuthoritySid(AccountSid),
                     RidCount);

    for (i = 0; i < (ULONG)RidCount; i++)
    {
        p = RtlSubAuthoritySid(AccountSid, i);
        q = RtlSubAuthoritySid(DomainSid, i);
        *q = *p;
    }

    return DomainSid;
}
