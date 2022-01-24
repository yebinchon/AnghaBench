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
struct options_table_entry {char** choices; int /*<<< orphan*/  name; } ;
struct options {int dummy; } ;
struct cmdq_item {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cmdq_item*,char*,char const*) ; 
 int FUNC1 (struct options*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct options*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (char const*,char const*) ; 

__attribute__((used)) static int
FUNC4(struct cmdq_item *item,
    const struct options_table_entry *oe, struct options *oo,
    const char *value)
{
	const char	**cp;
	int		  n, choice = -1;

	if (value == NULL) {
		choice = FUNC1(oo, oe->name);
		if (choice < 2)
			choice = !choice;
	} else {
		n = 0;
		for (cp = oe->choices; *cp != NULL; cp++) {
			if (FUNC3(*cp, value) == 0)
				choice = n;
			n++;
		}
		if (choice == -1) {
			FUNC0(item, "unknown value: %s", value);
			return (-1);
		}
	}
	FUNC2(oo, oe->name, choice);
	return (0);
}