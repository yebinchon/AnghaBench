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
struct TYPE_4__ {int /*<<< orphan*/  revoked_by_rr; } ;
typedef  TYPE_1__ DnsTrustAnchor ;
typedef  int /*<<< orphan*/  DnsResourceRecord ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  dns_resource_record_hash_ops ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(DnsTrustAnchor *d, DnsResourceRecord *rr) {
        int r;

        FUNC0(d);

        r = FUNC2(&d->revoked_by_rr, &dns_resource_record_hash_ops);
        if (r < 0)
                return r;

        r = FUNC3(d->revoked_by_rr, rr);
        if (r < 0)
                return r;
        if (r > 0)
                FUNC1(rr);

        return r;
}