#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct seq_file {TYPE_1__* private; } ;
struct inode {int dummy; } ;
struct file {struct seq_file* private_data; } ;
struct TYPE_2__ {scalar_t__ cached_pos; int /*<<< orphan*/ * cached_node; int /*<<< orphan*/  procfs_list; } ;
typedef  TYPE_1__ procfs_list_cursor_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  procfs_list_seq_ops ; 
 int FUNC1 (struct file*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC2(struct inode *inode, struct file *filp)
{
	int rc = FUNC1(filp, &procfs_list_seq_ops,
	    sizeof (procfs_list_cursor_t));
	if (rc != 0)
		return (rc);

	struct seq_file *f = filp->private_data;
	procfs_list_cursor_t *cursor = f->private;
	cursor->procfs_list = FUNC0(inode);
	cursor->cached_node = NULL;
	cursor->cached_pos = 0;

	return (0);
}