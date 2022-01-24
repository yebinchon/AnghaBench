#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  by_key; int /*<<< orphan*/  by_expiry; } ;
typedef  TYPE_1__ DnsCache ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  dns_cache_item_prioq_compare_func ; 
 int /*<<< orphan*/  dns_resource_key_hash_ops ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(DnsCache *c) {
        int r;

        FUNC0(c);

        r = FUNC2(&c->by_expiry, dns_cache_item_prioq_compare_func);
        if (r < 0)
                return r;

        r = FUNC1(&c->by_key, &dns_resource_key_hash_ops);
        if (r < 0)
                return r;

        return r;
}