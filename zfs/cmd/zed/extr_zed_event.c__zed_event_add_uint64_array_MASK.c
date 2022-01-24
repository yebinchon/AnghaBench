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
typedef  int /*<<< orphan*/  zed_strings_t ;
typedef  size_t uint_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  u_longlong_t ;
typedef  int /*<<< orphan*/  nvpair_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 scalar_t__ DATA_TYPE_UINT64_ARRAY ; 
 int MAXBUF ; 
 int FUNC0 (scalar_t__,char const*) ; 
 int FUNC1 (scalar_t__,int /*<<< orphan*/ *,char const*,char const*,char*,char*) ; 
 scalar_t__ FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__**,size_t*) ; 
 int FUNC7 (char*,int,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(uint64_t eid, zed_strings_t *zsp,
    const char *prefix, nvpair_t *nvp)
{
	char buf[MAXBUF];
	int buflen = sizeof (buf);
	const char *name;
	const char *fmt;
	uint64_t *u64p;
	uint_t nelem;
	uint_t i;
	char *p;
	int n;

	FUNC3((nvp != NULL) && (FUNC5(nvp) == DATA_TYPE_UINT64_ARRAY));

	name = FUNC4(nvp);
	fmt = FUNC2(name) ? "0x%.16llX " : "%llu ";
	(void) FUNC6(nvp, &u64p, &nelem);
	for (i = 0, p = buf; (i < nelem) && (buflen > 0); i++) {
		n = FUNC7(p, buflen, fmt, (u_longlong_t)u64p[i]);
		if ((n < 0) || (n >= buflen))
			return (FUNC0(eid, name));
		p += n;
		buflen -= n;
	}
	if (nelem > 0)
		*--p = '\0';

	return (FUNC1(eid, zsp, prefix, name, "%s", buf));
}