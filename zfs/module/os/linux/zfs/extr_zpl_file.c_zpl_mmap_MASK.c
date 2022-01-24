#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  z_lock; int /*<<< orphan*/  z_is_mapped; } ;
typedef  TYPE_2__ znode_t ;
struct vm_area_struct {int /*<<< orphan*/  vm_flags; scalar_t__ vm_start; scalar_t__ vm_end; int /*<<< orphan*/  vm_pgoff; } ;
struct inode {int dummy; } ;
struct file {TYPE_1__* f_mapping; } ;
typedef  int /*<<< orphan*/  fstrans_cookie_t ;
typedef  int /*<<< orphan*/  caddr_t ;
struct TYPE_4__ {struct inode* host; } ;

/* Variables and functions */
 int /*<<< orphan*/  B_TRUE ; 
 TYPE_2__* FUNC0 (struct inode*) ; 
 int FUNC1 (struct file*,struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(struct file *filp, struct vm_area_struct *vma)
{
	struct inode *ip = filp->f_mapping->host;
	znode_t *zp = FUNC0(ip);
	int error;
	fstrans_cookie_t cookie;

	cookie = FUNC4();
	error = -FUNC6(ip, vma->vm_pgoff, (caddr_t *)vma->vm_start,
	    (size_t)(vma->vm_end - vma->vm_start), vma->vm_flags);
	FUNC5(cookie);
	if (error)
		return (error);

	error = FUNC1(filp, vma);
	if (error)
		return (error);

	FUNC2(&zp->z_lock);
	zp->z_is_mapped = B_TRUE;
	FUNC3(&zp->z_lock);

	return (error);
}