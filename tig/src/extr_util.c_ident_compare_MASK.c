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
struct ident {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC1(const struct ident *i1, const struct ident *i2)
{
	if (!i1 || !i2)
		return (!!i1) - (!!i2);
	if (!i1->name || !i2->name)
		return (!!i1->name) - (!!i2->name);
	return FUNC0(i1->name, i2->name);
}