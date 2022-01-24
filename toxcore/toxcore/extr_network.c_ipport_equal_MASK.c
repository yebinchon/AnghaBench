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
struct TYPE_4__ {scalar_t__ port; int /*<<< orphan*/  ip; } ;
typedef  TYPE_1__ IP_Port ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC1(const IP_Port *a, const IP_Port *b)
{
    if (!a || !b)
        return 0;

    if (!a->port || (a->port != b->port))
        return 0;

    return FUNC0(&a->ip, &b->ip);
}