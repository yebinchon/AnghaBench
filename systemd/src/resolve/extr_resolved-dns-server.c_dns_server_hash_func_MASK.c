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
struct siphash {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  ifindex; int /*<<< orphan*/  family; int /*<<< orphan*/  address; } ;
typedef  TYPE_1__ DnsServer ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,struct siphash*) ; 

__attribute__((used)) static void FUNC3(const DnsServer *s, struct siphash *state) {
        FUNC1(s);

        FUNC2(&s->family, sizeof(s->family), state);
        FUNC2(&s->address, FUNC0(s->family), state);
        FUNC2(&s->ifindex, sizeof(s->ifindex), state);
}