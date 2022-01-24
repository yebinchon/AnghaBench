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
struct TYPE_4__ {scalar_t__ dns_over_tls_mode; int /*<<< orphan*/  manager; } ;
typedef  TYPE_1__ Link ;
typedef  scalar_t__ DnsOverTlsMode ;

/* Variables and functions */
 scalar_t__ _DNS_OVER_TLS_MODE_INVALID ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

DnsOverTlsMode FUNC2(Link *l) {
        FUNC0(l);

        if (l->dns_over_tls_mode != _DNS_OVER_TLS_MODE_INVALID)
                return l->dns_over_tls_mode;

        return FUNC1(l->manager);
}