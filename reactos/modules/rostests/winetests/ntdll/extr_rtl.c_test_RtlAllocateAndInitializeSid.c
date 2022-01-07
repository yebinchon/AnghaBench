
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int member_0; int member_1; int member_2; int member_3; int member_4; int member_5; } ;
struct TYPE_5__ {TYPE_1__ member_0; } ;
typedef TYPE_2__ SID_IDENTIFIER_AUTHORITY ;
typedef int PSID ;
typedef scalar_t__ NTSTATUS ;


 scalar_t__ STATUS_INVALID_SID ;
 int ok (int,char*,scalar_t__) ;
 scalar_t__ pRtlAllocateAndInitializeSid (TYPE_2__*,int,int,int,int,int,int,int,int,int,int *) ;
 scalar_t__ pRtlFreeSid (int ) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_RtlAllocateAndInitializeSid(void)
{
    NTSTATUS ret;
    SID_IDENTIFIER_AUTHORITY sia = {{ 1, 2, 3, 4, 5, 6 }};
    PSID psid;

    if (!pRtlAllocateAndInitializeSid)
    {
        win_skip("RtlAllocateAndInitializeSid is not available\n");
        return;
    }

    ret = pRtlAllocateAndInitializeSid(&sia, 0, 1, 2, 3, 4, 5, 6, 7, 8, &psid);
    ok(!ret, "RtlAllocateAndInitializeSid error %08x\n", ret);
    ret = pRtlFreeSid(psid);
    ok(!ret, "RtlFreeSid error %08x\n", ret);


    if (0)
    {
        pRtlAllocateAndInitializeSid(((void*)0), 0, 1, 2, 3, 4, 5, 6, 7, 8, &psid);
        pRtlAllocateAndInitializeSid(&sia, 0, 1, 2, 3, 4, 5, 6, 7, 8, ((void*)0));
    }

    ret = pRtlAllocateAndInitializeSid(&sia, 9, 1, 2, 3, 4, 5, 6, 7, 8, &psid);
    ok(ret == STATUS_INVALID_SID, "wrong error %08x\n", ret);
}
