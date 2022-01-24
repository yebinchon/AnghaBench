#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/ * DnsResourceRecord ;
typedef  int /*<<< orphan*/  DnsAnswerFlags ;
typedef  int /*<<< orphan*/  DnsAnswer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ **,int) ; 

int FUNC3(DnsAnswer **a, DnsResourceRecord *rr, int ifindex, DnsAnswerFlags flags) {
        int r;

        FUNC0(a);
        FUNC0(rr);

        r = FUNC2(a, 1);
        if (r < 0)
                return r;

        return FUNC1(*a, rr, ifindex, flags);
}