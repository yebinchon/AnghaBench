
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ULONG ;
typedef int UCHAR ;
typedef scalar_t__* PULONG ;
typedef int * PSID ;


 int * MIDL_user_allocate (scalar_t__) ;
 int RtlIdentifierAuthoritySid (int *) ;
 int RtlInitializeSid (int *,int ,int) ;
 scalar_t__ RtlLengthRequiredSid (int) ;
 int* RtlSubAuthorityCountSid (int *) ;
 scalar_t__* RtlSubAuthoritySid (int *,scalar_t__) ;

__attribute__((used)) static PSID
CreateSidFromSidAndRid(PSID SrcSid,
                       ULONG RelativeId)
{
    UCHAR RidCount;
    PSID DstSid;
    ULONG i;
    ULONG DstSidSize;
    PULONG p, q;

    RidCount = *RtlSubAuthorityCountSid(SrcSid);
    if (RidCount >= 8)
        return ((void*)0);

    DstSidSize = RtlLengthRequiredSid(RidCount + 1);

    DstSid = MIDL_user_allocate(DstSidSize);
    if (DstSid == ((void*)0))
        return ((void*)0);

    RtlInitializeSid(DstSid,
                     RtlIdentifierAuthoritySid(SrcSid),
                     RidCount + 1);

    for (i = 0; i < (ULONG)RidCount; i++)
    {
        p = RtlSubAuthoritySid(SrcSid, i);
        q = RtlSubAuthoritySid(DstSid, i);
        *q = *p;
    }

    q = RtlSubAuthoritySid(DstSid, (ULONG)RidCount);
    *q = RelativeId;

    return DstSid;
}
