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
struct TYPE_6__ {scalar_t__ verified_feature_level; scalar_t__ possible_feature_level; } ;
typedef  scalar_t__ DnsServerFeatureLevel ;
typedef  TYPE_1__ DnsServer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 

void FUNC4(DnsServer *s, DnsServerFeatureLevel level) {
        FUNC0(s);

        /* Invoked whenever we got a FORMERR, SERVFAIL or NOTIMP rcode from a server and downgrading the feature level
         * for the transaction made it go away. In this case we immediately downgrade to the feature level that made
         * things work. */

        if (s->verified_feature_level > level)
                s->verified_feature_level = level;

        if (s->possible_feature_level > level) {
                s->possible_feature_level = level;
                FUNC1(s);
        }

        FUNC3("Downgrading transaction feature level fixed an RCODE error, downgrading server %s too.", FUNC2(s));
}