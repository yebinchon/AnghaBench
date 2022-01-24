#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ class; scalar_t__ type; } ;
typedef  TYPE_1__ DnsResourceKey ;

/* Variables and functions */
 scalar_t__ DNS_TYPE_SOA ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__ const*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__ const*) ; 

int FUNC3(const DnsResourceKey *key, const DnsResourceKey *soa) {
        FUNC0(soa);
        FUNC0(key);

        /* Checks whether 'soa' is a SOA record for the specified key. */

        if (soa->class != key->class)
                return 0;

        if (soa->type != DNS_TYPE_SOA)
                return 0;

        return FUNC1(FUNC2(key), FUNC2(soa));
}