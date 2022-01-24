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
typedef  int /*<<< orphan*/  uint16_t ;

/* Variables and functions */
 int /*<<< orphan*/  DNS_TYPE_DNSKEY ; 
 int /*<<< orphan*/  DNS_TYPE_NS ; 
 int /*<<< orphan*/  DNS_TYPE_NSEC3PARAM ; 
 int /*<<< orphan*/  DNS_TYPE_SOA ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool FUNC1(uint16_t type) {

        /* Returns true for all RR types that may only appear signed in a zone apex */

        return FUNC0(type,
                      DNS_TYPE_SOA,
                      DNS_TYPE_NS,            /* this one can appear elsewhere, too, but not signed */
                      DNS_TYPE_DNSKEY,
                      DNS_TYPE_NSEC3PARAM);
}