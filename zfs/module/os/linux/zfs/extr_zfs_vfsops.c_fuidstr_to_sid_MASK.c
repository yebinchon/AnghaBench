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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(zfsvfs_t *zfsvfs, const char *fuidstr,
    char *domainbuf, int buflen, uid_t *ridp)
{
	uint64_t fuid;
	const char *domain;

	fuid = FUNC4(fuidstr, NULL);

	domain = FUNC3(zfsvfs, FUNC0(fuid));
	if (domain)
		(void) FUNC2(domainbuf, domain, buflen);
	else
		domainbuf[0] = '\0';
	*ridp = FUNC1(fuid);
}