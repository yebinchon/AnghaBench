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
struct ext2_xattr {char const* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,char const**,int*) ; 
 scalar_t__ FUNC1 (char const*,char const*,int) ; 
 int FUNC2 (char const*) ; 

__attribute__((used)) static int FUNC3(struct ext2_xattr *attrs, int count,
			       const char *name)
{
	struct ext2_xattr *x;
	int i;
	const char *shortname, *x_shortname;
	int name_idx, x_name_idx;
	int shortname_len, x_shortname_len;

	FUNC0(name, &shortname, &name_idx);
	shortname_len = FUNC2(shortname);

	for (i = 0, x = attrs; i < count; i++, x++) {
		FUNC0(x->name, &x_shortname, &x_name_idx);
		if (name_idx < x_name_idx)
			break;
		if (name_idx > x_name_idx)
			continue;

		x_shortname_len = FUNC2(x_shortname);
		if (shortname_len < x_shortname_len)
			break;
		if (shortname_len > x_shortname_len)
			continue;

		if (FUNC1(shortname, x_shortname, shortname_len) <= 0)
			break;
	}
	return i;
}