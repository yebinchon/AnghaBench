#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  class; int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ DnsResourceKey ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__ const*) ; 

__attribute__((used)) static int FUNC3(const DnsResourceKey *x, const DnsResourceKey *y) {
        int ret;

        ret = FUNC1(FUNC2(x), FUNC2(y));
        if (ret != 0)
                return ret;

        ret = FUNC0(x->type, y->type);
        if (ret != 0)
                return ret;

        ret = FUNC0(x->class, y->class);
        if (ret != 0)
                return ret;

        return 0;
}