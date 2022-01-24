#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {size_t zko_attr_count; int /*<<< orphan*/  zko_kobj; int /*<<< orphan*/  zko_kobj_type; int /*<<< orphan*/ ** zko_default_attrs; } ;
typedef  TYPE_1__ zfs_mod_kobj_t ;
struct kobject {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct kobject*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(zfs_mod_kobj_t *zkobj, struct kobject *parent, const char *name)
{
	/* zko_default_attrs must be NULL terminated */
	FUNC0(zkobj->zko_default_attrs != NULL);
	FUNC0(zkobj->zko_default_attrs[zkobj->zko_attr_count] == NULL);

	FUNC2(&zkobj->zko_kobj, &zkobj->zko_kobj_type);
	return (FUNC1(&zkobj->zko_kobj, parent, name));
}