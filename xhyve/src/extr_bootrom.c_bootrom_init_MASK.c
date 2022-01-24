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
struct stat {int st_size; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int MAX_BOOTROM_SIZE ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int XHYVE_PAGE_MASK ; 
 int XHYVE_PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC2 (int,struct stat*) ; 
 int FUNC3 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int,char*,int) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (size_t,void**) ; 

int
FUNC7(const char *romfile)
{
	struct stat sbuf;
	ssize_t rlen;
	char *ptr;
	int fd, i, rv;

	rv = -1;
	fd = FUNC3(romfile, O_RDONLY);
	if (fd < 0) {
		FUNC1(stderr, "Error opening bootrom \"%s\": %s\n",
		    romfile, FUNC5(errno));
		goto done;
	}

        if (FUNC2(fd, &sbuf) < 0) {
		FUNC1(stderr, "Could not fstat bootrom file \"%s\": %s\n",
		    romfile, FUNC5(errno));
		goto done;
        }

	/*
	 * Limit bootrom size to 16MB so it doesn't encroach into reserved
	 * MMIO space (e.g. APIC, HPET, MSI).
	 */
	if (sbuf.st_size > MAX_BOOTROM_SIZE || sbuf.st_size < XHYVE_PAGE_SIZE) {
		FUNC1(stderr, "Invalid bootrom size %d\n", sbuf.st_size);
		goto done;
	}

	if (sbuf.st_size & XHYVE_PAGE_MASK) {
		FUNC1(stderr, "Bootrom size %d is not a multiple of the "
		    "page size\n", sbuf.st_size);
		goto done;
	}

	/* Map the bootrom into the guest address space */
	if (FUNC6((size_t)sbuf.st_size, (void **)&ptr) != 0)
    {
        FUNC1(stderr, "hv_setup_bootrom_memory failed\n");
		goto done;
    }

	/* Read 'romfile' into the guest address space */
	for (i = 0; i < sbuf.st_size / XHYVE_PAGE_SIZE; i++) {
		rlen = FUNC4(fd, ptr + i * XHYVE_PAGE_SIZE, XHYVE_PAGE_SIZE);
		if (rlen != XHYVE_PAGE_SIZE) {
			FUNC1(stderr, "Incomplete read of page %d of bootrom "
			    "file %s: %zd bytes\n", i, romfile, rlen);
			goto done;
		}
	}
	rv = 0;
done:
	if (fd >= 0)
		FUNC0(fd);
	return (rv);
}