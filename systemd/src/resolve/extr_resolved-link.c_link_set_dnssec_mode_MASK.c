#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ dnssec_mode; TYPE_1__* unicast_scope; } ;
struct TYPE_5__ {int /*<<< orphan*/  cache; } ;
typedef  TYPE_2__ Link ;
typedef  scalar_t__ DnssecMode ;

/* Variables and functions */
 scalar_t__ DNSSEC_ALLOW_DOWNGRADE ; 
 scalar_t__ DNSSEC_NO ; 
 scalar_t__ DNSSEC_YES ; 
 scalar_t__ FUNC0 (scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ _DNSSEC_MODE_INVALID ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

void FUNC4(Link *l, DnssecMode mode) {

        FUNC1(l);

#if ! HAVE_GCRYPT
        if (FUNC0(mode, DNSSEC_YES, DNSSEC_ALLOW_DOWNGRADE))
                FUNC3("DNSSEC option for the link cannot be enabled or set to allow-downgrade when systemd-resolved is built without gcrypt support. Turning off DNSSEC support.");
        return;
#endif

        if (l->dnssec_mode == mode)
                return;

        if ((l->dnssec_mode == _DNSSEC_MODE_INVALID) ||
            (l->dnssec_mode == DNSSEC_NO && mode != DNSSEC_NO) ||
            (l->dnssec_mode == DNSSEC_ALLOW_DOWNGRADE && mode == DNSSEC_YES)) {

                /* When switching from non-DNSSEC mode to DNSSEC mode, flush the cache. Also when switching from the
                 * allow-downgrade mode to full DNSSEC mode, flush it too. */
                if (l->unicast_scope)
                        FUNC2(&l->unicast_scope->cache);
        }

        l->dnssec_mode = mode;
}