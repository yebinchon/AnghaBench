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
union options_value {int /*<<< orphan*/ * cmdlist; int /*<<< orphan*/  string; } ;
struct options_entry {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct options_entry*) ; 
 scalar_t__ FUNC1 (struct options_entry*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct options_entry *o, union options_value *ov)
{
	if (FUNC1(o))
		FUNC3(ov->string);
	if (FUNC0(o) && ov->cmdlist != NULL)
		FUNC2(ov->cmdlist);
}