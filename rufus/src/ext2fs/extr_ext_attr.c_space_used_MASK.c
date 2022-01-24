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
struct ext2_xattr {int /*<<< orphan*/  value_len; int /*<<< orphan*/  ea_ino; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const**,int*) ; 
 int FUNC3 (char const*) ; 

__attribute__((used)) static int FUNC4(struct ext2_xattr *attrs, int count)
{
	int total = 0;
	struct ext2_xattr *x;
	const char *shortname;
	int i, len, name_idx;

	for (i = 0, x = attrs; i < count; i++, x++) {
		FUNC2(x->name, &shortname, &name_idx);
		len = FUNC3(shortname);
		total += FUNC0(len);
		if (!x->ea_ino)
			total += FUNC1(x->value_len);
	}
	return total;
}