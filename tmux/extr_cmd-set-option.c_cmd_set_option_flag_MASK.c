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
struct options_table_entry {int /*<<< orphan*/  name; } ;
struct options {int dummy; } ;
struct cmdq_item {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cmdq_item*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct options*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct options*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (char const*,char*) ; 
 scalar_t__ FUNC4 (char const*,char*) ; 

__attribute__((used)) static int
FUNC5(struct cmdq_item *item,
    const struct options_table_entry *oe, struct options *oo,
    const char *value)
{
	int	flag;

	if (value == NULL || *value == '\0')
		flag = !FUNC1(oo, oe->name);
	else if (FUNC4(value, "1") == 0 ||
	    FUNC3(value, "on") == 0 ||
	    FUNC3(value, "yes") == 0)
		flag = 1;
	else if (FUNC4(value, "0") == 0 ||
	    FUNC3(value, "off") == 0 ||
	    FUNC3(value, "no") == 0)
		flag = 0;
	else {
		FUNC0(item, "bad value: %s", value);
		return (-1);
	}
	FUNC2(oo, oe->name, flag);
	return (0);
}