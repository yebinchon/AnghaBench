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
struct vfsmount {int dummy; } ;
struct path {int dummy; } ;

/* Variables and functions */
 struct vfsmount* FUNC0 (int) ; 
 int FUNC1 (struct path*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct vfsmount *
FUNC2(struct path *path)
{
	int error;

	error = -FUNC1(path, 0);
	if (error)
		return (FUNC0(error));

	/*
	 * Rather than returning the new vfsmount for the snapshot we must
	 * return NULL to indicate a mount collision.  This is done because
	 * the user space mount calls do_add_mount() which adds the vfsmount
	 * to the name space.  If we returned the new mount here it would be
	 * added again to the vfsmount list resulting in list corruption.
	 */
	return (NULL);
}