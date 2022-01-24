#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint64_t ;
typedef  size_t uint32_t ;
struct TYPE_4__ {int version; size_t initrd_addr_max; size_t ramdisk_image; size_t ramdisk_size; } ;
struct zero_page {size_t ext_ramdisk_image; size_t ext_ramdisk_size; TYPE_1__ setup_header; } ;
struct TYPE_6__ {size_t size; scalar_t__ base; } ;
struct TYPE_5__ {size_t base; size_t size; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 size_t FUNC0 (size_t,int) ; 
 scalar_t__ BASE_ZEROPAGE ; 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (void*,int,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,long,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_3__ lowmem ; 
 TYPE_2__ ramdisk ; 

__attribute__((used)) static int
FUNC6(char *path) {
	uint64_t ramdisk_start;
	uint32_t initrd_max;
	volatile struct zero_page *zp;
	size_t sz;
	FILE *f;

	zp = ((struct zero_page *) (lowmem.base + BASE_ZEROPAGE));

	if (!(f = FUNC2(path, "r"))) {;
		return -1;
	}
	
	FUNC4(f, 0L, SEEK_END);
	sz = (size_t) FUNC5(f);
	FUNC4(f, 0, SEEK_SET);

	/* highest address for loading the initrd */
	if (zp->setup_header.version >= 0x203) {
		initrd_max = zp->setup_header.initrd_addr_max;
	} else {
		initrd_max = 0x37ffffff; /* Hardcoded value for older kernels */
	}

	if (initrd_max >= lowmem.size) {
		initrd_max = ((uint32_t) lowmem.size - 1);
	}

	ramdisk_start = FUNC0(initrd_max - sz, 0x1000ull);

	if ((ramdisk_start + sz) > lowmem.size) {
		/* not enough lowmem */
		FUNC1(f);
		return -1;
	}

	/* copy ramdisk */
	if (!FUNC3(((void *) (lowmem.base + ramdisk_start)), 1, sz, f)) {
		FUNC1(f);
		return -1;
	}

	FUNC1(f);

	zp->setup_header.ramdisk_image = ((uint32_t) ramdisk_start);
	zp->ext_ramdisk_image = ((uint32_t) (ramdisk_start >> 32));
	zp->setup_header.ramdisk_size = ((uint32_t) sz);
	zp->ext_ramdisk_size = ((uint32_t) (sz >> 32));

	ramdisk.base = ramdisk_start;
	ramdisk.size = sz;

	return 0;
}