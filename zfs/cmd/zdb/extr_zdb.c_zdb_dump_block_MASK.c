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
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  u_longlong_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int ZDB_FLAG_BSWAP ; 
 scalar_t__ FUNC1 (char) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static void
FUNC3(char *label, void *buf, uint64_t size, int flags)
{
	uint64_t *d = (uint64_t *)buf;
	unsigned nwords = size / sizeof (uint64_t);
	int do_bswap = !!(flags & ZDB_FLAG_BSWAP);
	unsigned i, j;
	const char *hdr;
	char *c;


	if (do_bswap)
		hdr = " 7 6 5 4 3 2 1 0   f e d c b a 9 8";
	else
		hdr = " 0 1 2 3 4 5 6 7   8 9 a b c d e f";

	(void) FUNC2("\n%s\n%6s   %s  0123456789abcdef\n", label, "", hdr);

#ifdef _LITTLE_ENDIAN
	/* correct the endianness */
	do_bswap = !do_bswap;
#endif
	for (i = 0; i < nwords; i += 2) {
		(void) FUNC2("%06llx:  %016llx  %016llx  ",
		    (u_longlong_t)(i * sizeof (uint64_t)),
		    (u_longlong_t)(do_bswap ? FUNC0(d[i]) : d[i]),
		    (u_longlong_t)(do_bswap ? FUNC0(d[i + 1]) : d[i + 1]));

		c = (char *)&d[i];
		for (j = 0; j < 2 * sizeof (uint64_t); j++)
			(void) FUNC2("%c", FUNC1(c[j]) ? c[j] : '.');
		(void) FUNC2("\n");
	}
}