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
struct compat_dir {int /*<<< orphan*/  dir; int /*<<< orphan*/  ffn; struct compat_dir* path; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct compat_dir*) ; 

void FUNC3(struct compat_dir *cd)
{
	if(cd)
	{
		FUNC2(cd->path);
#ifdef WANT_WIN32_UNICODE
		FindClose(cd->ffn);
#else
		FUNC1(cd->dir);
#endif
		FUNC2(cd);
	}
}