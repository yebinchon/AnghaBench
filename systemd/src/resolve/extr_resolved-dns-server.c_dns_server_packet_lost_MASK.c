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
struct TYPE_4__ {scalar_t__ possible_feature_level; int /*<<< orphan*/  n_failed_tcp; int /*<<< orphan*/  n_failed_tls; int /*<<< orphan*/  n_failed_udp; struct TYPE_4__* manager; } ;
typedef  scalar_t__ DnsServerFeatureLevel ;
typedef  TYPE_1__ DnsServer ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int IPPROTO_TCP ; 
 int IPPROTO_UDP ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

void FUNC2(DnsServer *s, int protocol, DnsServerFeatureLevel level) {
        FUNC1(s);
        FUNC1(s->manager);

        if (s->possible_feature_level == level) {
                if (protocol == IPPROTO_UDP)
                        s->n_failed_udp++;
                else if (protocol == IPPROTO_TCP) {
                        if (FUNC0(level))
                                s->n_failed_tls++;
                        else
                                s->n_failed_tcp++;
                }
        }
}