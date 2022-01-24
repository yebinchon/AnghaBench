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
struct TYPE_3__ {char const* mnt_osname; void* mnt_data; } ;
typedef  TYPE_1__ zfs_mnt_t ;
struct super_block {int /*<<< orphan*/  s_root; } ;
struct file_system_type {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 struct dentry* FUNC0 (struct super_block*) ; 
 scalar_t__ FUNC1 (struct super_block*) ; 
 struct dentry* FUNC2 (int /*<<< orphan*/ ) ; 
 struct super_block* FUNC3 (struct file_system_type*,int,TYPE_1__*) ; 

__attribute__((used)) static struct dentry *
FUNC4(struct file_system_type *fs_type, int flags,
    const char *osname, void *data)
{
	zfs_mnt_t zm = { .mnt_osname = osname, .mnt_data = data };

	struct super_block *sb = FUNC3(fs_type, flags, &zm);
	if (FUNC1(sb))
		return (FUNC0(sb));

	return (FUNC2(sb->s_root));
}