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
typedef  int uint_t ;
typedef  int uint64_t ;
typedef  scalar_t__ uchar_t ;
typedef  int /*<<< orphan*/  reclen ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char*,int,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ **,int) ; 

int
FUNC4(char *buf, uint64_t bytes_read, uint64_t *leftover,
    nvlist_t ***records, uint_t *numrecords)
{
	uint64_t reclen;
	nvlist_t *nv;
	int i;
	void *tmp;

	while (bytes_read > sizeof (reclen)) {

		/* get length of packed record (stored as little endian) */
		for (i = 0, reclen = 0; i < sizeof (reclen); i++)
			reclen += (uint64_t)(((uchar_t *)buf)[i]) << (8*i);

		if (bytes_read < sizeof (reclen) + reclen)
			break;

		/* unpack record */
		if (FUNC2(buf + sizeof (reclen), reclen, &nv, 0) != 0)
			return (ENOMEM);
		bytes_read -= sizeof (reclen) + reclen;
		buf += sizeof (reclen) + reclen;

		/* add record to nvlist array */
		(*numrecords)++;
		if (FUNC0(*numrecords + 1)) {
			tmp = FUNC3(*records,
			    *numrecords * 2 * sizeof (nvlist_t *));
			if (tmp == NULL) {
				FUNC1(nv);
				(*numrecords)--;
				return (ENOMEM);
			}
			*records = tmp;
		}
		(*records)[*numrecords - 1] = nv;
	}

	*leftover = bytes_read;
	return (0);
}