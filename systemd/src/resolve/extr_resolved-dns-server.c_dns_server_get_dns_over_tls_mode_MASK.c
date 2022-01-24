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
struct TYPE_4__ {int /*<<< orphan*/  manager; scalar_t__ link; } ;
typedef  TYPE_1__ DnsServer ;
typedef  int /*<<< orphan*/  DnsOverTlsMode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

DnsOverTlsMode FUNC3(DnsServer *s) {
        FUNC0(s);

        if (s->link)
                return FUNC1(s->link);

        return FUNC2(s->manager);
}