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
struct TYPE_3__ {int /*<<< orphan*/ * z_os; } ;
typedef  TYPE_1__ zfsvfs_t ;
typedef  int /*<<< orphan*/  objset_t ;

/* Variables and functions */
 int /*<<< orphan*/  EILSEQ ; 
 int /*<<< orphan*/  ENAMETOOLONG ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 int FUNC3 (char const*) ; 
 scalar_t__ FUNC4 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(zfsvfs_t *zfsvfs, const char *snap_name, int len,
    char *full_name)
{
	objset_t *os = zfsvfs->z_os;

	if (FUNC4(snap_name, NULL, NULL) != 0)
		return (FUNC0(EILSEQ));

	FUNC1(os, full_name);
	if ((FUNC3(full_name) + 1 + FUNC3(snap_name)) >= len)
		return (FUNC0(ENAMETOOLONG));

	(void) FUNC2(full_name, "@");
	(void) FUNC2(full_name, snap_name);

	return (0);
}