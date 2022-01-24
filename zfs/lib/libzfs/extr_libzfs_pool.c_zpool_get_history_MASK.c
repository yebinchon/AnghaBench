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
typedef  int /*<<< orphan*/  zpool_handle_t ;
typedef  int uint_t ;
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_TRUE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  NV_UNIQUE_NAME ; 
 int /*<<< orphan*/  ZPOOL_HIST_RECORD ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,int*,int*) ; 
 char* FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (char*,int,int*,int /*<<< orphan*/ ***,int*) ; 

int
FUNC8(zpool_handle_t *zhp, nvlist_t **nvhisp, uint64_t *off,
    boolean_t *eof)
{
	char *buf;
	int buflen = 128 * 1024;
	nvlist_t **records = NULL;
	uint_t numrecords = 0;
	int err, i;
	uint64_t start = *off;

	buf = FUNC2(buflen);
	if (buf == NULL)
		return (ENOMEM);
	/* process about 1MB a time */
	while (*off - start < 1024 * 1024) {
		uint64_t bytes_read = buflen;
		uint64_t leftover;

		if ((err = FUNC1(zhp, buf, off, &bytes_read)) != 0)
			break;

		/* if nothing else was read in, we're at EOF, just return */
		if (!bytes_read) {
			*eof = B_TRUE;
			break;
		}

		if ((err = FUNC7(buf, bytes_read,
		    &leftover, &records, &numrecords)) != 0)
			break;
		*off -= leftover;
		if (leftover == bytes_read) {
			/*
			 * no progress made, because buffer is not big enough
			 * to hold this record; resize and retry.
			 */
			buflen *= 2;
			FUNC0(buf);
			buf = FUNC2(buflen);
			if (buf == NULL)
				return (ENOMEM);
		}
	}

	FUNC0(buf);

	if (!err) {
		FUNC6(FUNC4(nvhisp, NV_UNIQUE_NAME, 0) == 0);
		FUNC6(FUNC3(*nvhisp, ZPOOL_HIST_RECORD,
		    records, numrecords) == 0);
	}
	for (i = 0; i < numrecords; i++)
		FUNC5(records[i]);
	FUNC0(records);

	return (err);
}