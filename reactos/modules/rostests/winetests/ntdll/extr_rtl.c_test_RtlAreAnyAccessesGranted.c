
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ result; int DesiredAccess; int GrantedAccess; } ;
typedef scalar_t__ BOOLEAN ;


 unsigned int NB_ANY_ACCESSES ;
 TYPE_1__* any_accesses ;
 int ok (int,char*,unsigned int,int ,int ,scalar_t__,scalar_t__) ;
 scalar_t__ pRtlAreAnyAccessesGranted (int ,int ) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_RtlAreAnyAccessesGranted(void)
{
    unsigned int test_num;
    BOOLEAN result;

    if (!pRtlAreAnyAccessesGranted)
    {
        win_skip("RtlAreAnyAccessesGranted is not available\n");
        return;
    }

    for (test_num = 0; test_num < NB_ANY_ACCESSES; test_num++) {
 result = pRtlAreAnyAccessesGranted(any_accesses[test_num].GrantedAccess,
        any_accesses[test_num].DesiredAccess);
 ok(any_accesses[test_num].result == result,
           "(test %d): RtlAreAnyAccessesGranted(%08x, %08x) returns %d, expected %d\n",
    test_num, any_accesses[test_num].GrantedAccess,
    any_accesses[test_num].DesiredAccess,
    result, any_accesses[test_num].result);
    }
}
