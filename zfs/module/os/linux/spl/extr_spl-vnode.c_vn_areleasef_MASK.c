#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uf_info_t ;
struct task_struct {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  f_list; int /*<<< orphan*/  f_ref; } ;
typedef  TYPE_1__ file_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int,struct task_struct*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vn_file_lock ; 

void
FUNC7(int fd, uf_info_t *fip)
{
	file_t *fp;
	struct task_struct *task = (struct task_struct *)fip;

	if (fd < 0)
		return;

	FUNC5(&vn_file_lock);
	fp = FUNC2(fd, task);
	if (fp) {
		FUNC0(&fp->f_ref);
		if (FUNC1(&fp->f_ref) > 0) {
			FUNC6(&vn_file_lock);
			return;
		}

		FUNC3(&fp->f_list);
		FUNC4(fp);
	}
	FUNC6(&vn_file_lock);
}