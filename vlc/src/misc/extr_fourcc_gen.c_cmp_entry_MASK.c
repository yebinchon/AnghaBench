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
struct entry {int /*<<< orphan*/  fourcc; int /*<<< orphan*/  alias; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC1(const void *a, const void *b)
{
    const struct entry *ea = a, *eb = b;
    int d = FUNC0(ea->alias, eb->alias, 4);
    if (d == 0)
        d = FUNC0(ea->fourcc, eb->fourcc, 4);
    return d;
}