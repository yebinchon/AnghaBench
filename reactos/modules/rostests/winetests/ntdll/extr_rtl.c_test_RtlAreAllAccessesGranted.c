
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ result; int DesiredAccess; int GrantedAccess; } ;
typedef scalar_t__ BOOLEAN ;


 unsigned int NB_ALL_ACCESSES ;
 TYPE_1__* all_accesses ;
 int ok (int,char*,unsigned int,int ,int ,scalar_t__,scalar_t__) ;
 scalar_t__ pRtlAreAllAccessesGranted (int ,int ) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_RtlAreAllAccessesGranted(void)
{
    unsigned int test_num;
    BOOLEAN result;

    if (!pRtlAreAllAccessesGranted)
    {
        win_skip("RtlAreAllAccessesGranted is not available\n");
        return;
    }

    for (test_num = 0; test_num < NB_ALL_ACCESSES; test_num++) {
 result = pRtlAreAllAccessesGranted(all_accesses[test_num].GrantedAccess,
        all_accesses[test_num].DesiredAccess);
 ok(all_accesses[test_num].result == result,
           "(test %d): RtlAreAllAccessesGranted(%08x, %08x) returns %d, expected %d\n",
    test_num, all_accesses[test_num].GrantedAccess,
    all_accesses[test_num].DesiredAccess,
    result, all_accesses[test_num].result);
    }
}
