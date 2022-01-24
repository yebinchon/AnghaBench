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
typedef  int /*<<< orphan*/  errcode_t ;
typedef  int /*<<< orphan*/  __u64 ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int EXT2_MF_MOUNTED ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

errcode_t FUNC3(const char *file, int *mount_flags)
{
	errcode_t errcode = 0;
	__u64 Offset, Size;
	HANDLE h;
	BOOLEAN Readonly;

	*mount_flags = 0;

	if (!FUNC1(file, TRUE, &h, &Offset, &Size, &Readonly, &errcode))
		return errcode;

	*mount_flags &= FUNC2(h) ? EXT2_MF_MOUNTED : 0;
	FUNC0(h);

	return 0;
}