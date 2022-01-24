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
typedef  scalar_t__ DnsScopeMatch ;

/* Variables and functions */
 scalar_t__ DNS_SCOPE_YES_BASE ; 
 scalar_t__ _DNS_SCOPE_MATCH_INVALID ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*,char*) ; 

__attribute__((used)) static DnsScopeMatch FUNC2(const char *domain) {
        FUNC0(domain);

        if (FUNC1(domain, "254.169.in-addr.arpa") > 0)
                return DNS_SCOPE_YES_BASE + 4; /* 4 labels match */

        if (FUNC1(domain, "8.e.f.ip6.arpa") > 0 ||
            FUNC1(domain, "9.e.f.ip6.arpa") > 0 ||
            FUNC1(domain, "a.e.f.ip6.arpa") > 0 ||
            FUNC1(domain, "b.e.f.ip6.arpa") > 0)
                return DNS_SCOPE_YES_BASE + 5; /* 5 labels match */

        return _DNS_SCOPE_MATCH_INVALID;
}