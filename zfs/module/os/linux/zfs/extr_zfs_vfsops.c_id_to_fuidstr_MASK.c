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
typedef  int /*<<< orphan*/  zfsvfs_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  uid_t ;
typedef  int /*<<< orphan*/  longlong_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(zfsvfs_t *zfsvfs, const char *domain, uid_t rid,
    char *buf, boolean_t addok)
{
	uint64_t fuid;
	int domainid = 0;

	if (domain && domain[0]) {
		domainid = FUNC3(zfsvfs, domain, NULL, addok);
		if (domainid == -1)
			return (FUNC1(ENOENT));
	}
	fuid = FUNC0(domainid, rid);
	(void) FUNC2(buf, "%llx", (longlong_t)fuid);
	return (0);
}