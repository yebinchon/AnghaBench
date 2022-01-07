
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ULONG ;
typedef int UCHAR ;
struct TYPE_2__ {int * (* AllocateLsaHeap ) (int ) ;} ;
typedef int * PSID ;


 TYPE_1__ DispatchTable ;
 int RtlCopyMemory (int *,int *,int ) ;
 int RtlLengthRequiredSid (int) ;
 int* RtlSubAuthorityCountSid (int *) ;
 int * RtlSubAuthoritySid (int *,int) ;
 int * stub1 (int ) ;

__attribute__((used)) static
PSID
AppendRidToSid(PSID SrcSid,
               ULONG Rid)
{
    PSID DstSid = ((void*)0);
    UCHAR RidCount;

    RidCount = *RtlSubAuthorityCountSid(SrcSid);
    if (RidCount >= 8)
        return ((void*)0);

    DstSid = DispatchTable.AllocateLsaHeap(RtlLengthRequiredSid(RidCount + 1));
    if (DstSid == ((void*)0))
        return ((void*)0);

    RtlCopyMemory(DstSid,
                  SrcSid,
                  RtlLengthRequiredSid(RidCount));

    *RtlSubAuthorityCountSid(DstSid) = RidCount + 1;
    *RtlSubAuthoritySid(DstSid, RidCount) = Rid;

    return DstSid;
}
