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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  u_longlong_t ;
typedef  int /*<<< orphan*/  nvpair_t ;
typedef  scalar_t__ int64_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 scalar_t__ DATA_TYPE_INT64_ARRAY ; 
 int MAXBUF ; 
 int FUNC0 (int /*<<< orphan*/ ,char const*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*,char const*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__**,size_t*) ; 
 int FUNC6 (char*,int,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(uint64_t eid, zed_strings_t *zsp,
    const char *prefix, nvpair_t *nvp)
{
	char buf[MAXBUF];
	int buflen = sizeof (buf);
	const char *name;
	int64_t *i64p;
	uint_t nelem;
	uint_t i;
	char *p;
	int n;

	FUNC2((nvp != NULL) && (FUNC4(nvp) == DATA_TYPE_INT64_ARRAY));

	name = FUNC3(nvp);
	(void) FUNC5(nvp, &i64p, &nelem);
	for (i = 0, p = buf; (i < nelem) && (buflen > 0); i++) {
		n = FUNC6(p, buflen, "%lld ", (u_longlong_t)i64p[i]);
		if ((n < 0) || (n >= buflen))
			return (FUNC0(eid, name));
		p += n;
		buflen -= n;
	}
	if (nelem > 0)
		*--p = '\0';

	return (FUNC1(eid, zsp, prefix, name, "%s", buf));
}