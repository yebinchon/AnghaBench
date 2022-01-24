#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_1__* key; } ;
struct TYPE_9__ {int /*<<< orphan*/  revoked_by_rr; } ;
struct TYPE_8__ {int /*<<< orphan*/  type; } ;
typedef  TYPE_2__ DnsTrustAnchor ;
typedef  TYPE_3__ DnsResourceRecord ;

/* Variables and functions */
 int /*<<< orphan*/  DNS_TYPE_DNSKEY ; 
 int /*<<< orphan*/  DNS_TYPE_DS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int FUNC2 (int /*<<< orphan*/ ,TYPE_3__*) ; 

int FUNC3(DnsTrustAnchor *d, DnsResourceRecord *rr) {
        FUNC1(d);

        if (!FUNC0(rr->key->type, DNS_TYPE_DS, DNS_TYPE_DNSKEY))
                return 0;

        return FUNC2(d->revoked_by_rr, rr);
}