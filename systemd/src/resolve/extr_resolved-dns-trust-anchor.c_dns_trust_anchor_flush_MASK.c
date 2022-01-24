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
struct TYPE_4__ {int /*<<< orphan*/  negative_by_name; int /*<<< orphan*/  revoked_by_rr; int /*<<< orphan*/  positive_by_key; } ;
typedef  TYPE_1__ DnsTrustAnchor ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  dns_answer_unref ; 
 int /*<<< orphan*/  dns_resource_record_unref ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(DnsTrustAnchor *d) {
        FUNC0(d);

        d->positive_by_key = FUNC1(d->positive_by_key, dns_answer_unref);
        d->revoked_by_rr = FUNC3(d->revoked_by_rr, dns_resource_record_unref);
        d->negative_by_name = FUNC2(d->negative_by_name);
}