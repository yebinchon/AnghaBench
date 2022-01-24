#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ result; int /*<<< orphan*/  DesiredAccess; int /*<<< orphan*/  GrantedAccess; } ;
typedef  scalar_t__ BOOLEAN ;

/* Variables and functions */
 unsigned int NB_ALL_ACCESSES ; 
 TYPE_1__* all_accesses ; 
 int /*<<< orphan*/  FUNC0 (int,char*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void FUNC3(void)
{
    unsigned int test_num;
    BOOLEAN result;

    if (!&pRtlAreAllAccessesGranted)
    {
        FUNC2("RtlAreAllAccessesGranted is not available\n");
        return;
    }

    for (test_num = 0; test_num < NB_ALL_ACCESSES; test_num++) {
	result = FUNC1(all_accesses[test_num].GrantedAccess,
					   all_accesses[test_num].DesiredAccess);
	FUNC0(all_accesses[test_num].result == result,
           "(test %d): RtlAreAllAccessesGranted(%08x, %08x) returns %d, expected %d\n",
	   test_num, all_accesses[test_num].GrantedAccess,
	   all_accesses[test_num].DesiredAccess,
	   result, all_accesses[test_num].result);
    } /* for */
}