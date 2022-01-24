#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ class; scalar_t__ protocol; int family; int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ const DnsScope ;
typedef  TYPE_1__ DnsResourceKey ;

/* Variables and functions */
 scalar_t__ DNS_CLASS_IN ; 
 scalar_t__ DNS_PROTOCOL_DNS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__ const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__ const*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

bool FUNC6(DnsScope *s, const DnsResourceKey *key) {
        int key_family;

        FUNC0(s);
        FUNC0(key);

        /* Check if it makes sense to resolve the specified key on
         * this scope. Note that this call assumes as fully qualified
         * name, i.e. the search suffixes already appended. */

        if (key->class != DNS_CLASS_IN)
                return false;

        if (s->protocol == DNS_PROTOCOL_DNS) {

                /* On classic DNS, looking up non-address RRs is always
                 * fine. (Specifically, we want to permit looking up
                 * DNSKEY and DS records on the root and top-level
                 * domains.) */
                if (!FUNC3(key))
                        return true;

                /* However, we refuse to look up A and AAAA RRs on the
                 * root and single-label domains, under the assumption
                 * that those should be resolved via LLMNR or search
                 * path only, and should not be leaked onto the
                 * internet. */
                return !(FUNC2(FUNC4(key)) ||
                         FUNC1(FUNC4(key)));
        }

        /* On mDNS and LLMNR, send A and AAAA queries only on the
         * respective scopes */

        key_family = FUNC5(key->type);
        if (key_family < 0)
                return true;

        return key_family == s->family;
}