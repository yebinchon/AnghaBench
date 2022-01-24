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
struct TYPE_4__ {int /*<<< orphan*/  pos; } ;
typedef  TYPE_1__ zpl_dir_context_t ;
struct file {int /*<<< orphan*/  f_pos; } ;
typedef  int /*<<< orphan*/  filldir_t ;

/* Variables and functions */
 TYPE_1__ FUNC0 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct file*,TYPE_1__*) ; 

__attribute__((used)) static int
FUNC2(struct file *filp, void *dirent, filldir_t filldir)
{
	zpl_dir_context_t ctx =
	    FUNC0(dirent, filldir, filp->f_pos);
	int error;

	error = FUNC1(filp, &ctx);
	filp->f_pos = ctx.pos;

	return (error);
}