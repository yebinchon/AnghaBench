#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ verified_feature_level; int /*<<< orphan*/  verified_usec; TYPE_1__* manager; } ;
struct TYPE_6__ {int /*<<< orphan*/  event; } ;
typedef  scalar_t__ DnsServerFeatureLevel ;
typedef  TYPE_2__ DnsServer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(DnsServer *s, DnsServerFeatureLevel level) {
        FUNC0(s);

        if (s->verified_feature_level > level)
                return;

        if (s->verified_feature_level != level) {
                FUNC5("Verified we get a response at feature level %s from DNS server %s.",
                          FUNC3(level),
                          FUNC4(s));
                s->verified_feature_level = level;
        }

        FUNC1(FUNC6(s->manager->event, FUNC2(), &s->verified_usec) >= 0);
}