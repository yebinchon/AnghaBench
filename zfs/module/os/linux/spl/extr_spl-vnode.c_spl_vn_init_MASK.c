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
struct vnode {int dummy; } ;
typedef  int /*<<< orphan*/  file_t ;

/* Variables and functions */
 void* FUNC0 (char*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 void* vn_cache ; 
 int /*<<< orphan*/  vn_cache_constructor ; 
 int /*<<< orphan*/  vn_cache_destructor ; 
 void* vn_file_cache ; 
 int /*<<< orphan*/  vn_file_cache_constructor ; 
 int /*<<< orphan*/  vn_file_cache_destructor ; 
 int /*<<< orphan*/  vn_file_lock ; 

int
FUNC2(void)
{
	FUNC1(&vn_file_lock);

	vn_cache = FUNC0("spl_vn_cache",
	    sizeof (struct vnode), 64, vn_cache_constructor,
	    vn_cache_destructor, NULL, NULL, NULL, 0);

	vn_file_cache = FUNC0("spl_vn_file_cache",
	    sizeof (file_t), 64, vn_file_cache_constructor,
	    vn_file_cache_destructor, NULL, NULL, NULL, 0);

	return (0);
}