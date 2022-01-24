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
struct TYPE_4__ {int /*<<< orphan*/  f_vnode; int /*<<< orphan*/  f_file; } ;
typedef  TYPE_1__ file_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  vn_file_cache ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(file_t *fp)
{
	FUNC0(fp->f_file);
	FUNC0(fp->f_vnode);

	/* Unlinked from list, no refs, safe to free outside mutex */
	FUNC1(fp->f_file);
	FUNC3(fp->f_vnode);

	FUNC2(vn_file_cache, fp);
}