
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
LsapCopySid(PSID SrcSid)
{
    UCHAR RidCount;
    PSID DstSid;
    ULONG i;
    ULONG DstSidSize;
    PULONG p, q;

    RidCount = *RtlSubAuthorityCountSid(SrcSid);
    DstSidSize = RtlLengthRequiredSid(RidCount);

    DstSid = MIDL_user_allocate(DstSidSize);
    if (DstSid == ((void*)0))
        return ((void*)0);

    RtlInitializeSid(DstSid,
                     RtlIdentifierAuthoritySid(SrcSid),
                     RidCount);

    for (i = 0; i < (ULONG)RidCount; i++)
    {
        p = RtlSubAuthoritySid(SrcSid, i);
        q = RtlSubAuthoritySid(DstSid, i);
        *q = *p;
    }

    return DstSid;
}
