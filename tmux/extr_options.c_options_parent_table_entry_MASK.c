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
struct options_table_entry {int dummy; } ;
struct options_entry {struct options_table_entry const* tableentry; } ;
struct options {int /*<<< orphan*/ * parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 struct options_entry* FUNC1 (int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static const struct options_table_entry *
FUNC2(struct options *oo, const char *s)
{
	struct options_entry	*o;

	if (oo->parent == NULL)
		FUNC0("no parent options for %s", s);
	o = FUNC1(oo->parent, s);
	if (o == NULL)
		FUNC0("%s not in parent options", s);
	return (o->tableentry);
}