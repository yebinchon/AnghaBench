#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int zh_hdr_size; int zh_stats_size; int zh_stats_count; scalar_t__ zh_size; scalar_t__ zh_opts_size; } ;
typedef  TYPE_1__ ztest_shared_hdr_t ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* MAP_FAILED ; 
 int /*<<< orphan*/  MAP_SHARED ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  ztest_fd_data ; 
 void* ztest_shared ; 
 void* ztest_shared_callstate ; 
 void* ztest_shared_ds ; 
 TYPE_1__* ztest_shared_hdr ; 
 void* ztest_shared_opts ; 

__attribute__((used)) static void
FUNC6(void)
{
	int size, offset;
	ztest_shared_hdr_t *hdr;
	uint8_t *buf;

	hdr = (void *)FUNC3(0, FUNC1(sizeof (*hdr), FUNC2()),
	    PROT_READ, MAP_SHARED, ztest_fd_data, 0);
	FUNC0(hdr != MAP_FAILED);

	size = FUNC5(hdr);

	(void) FUNC4((caddr_t)hdr, FUNC1(sizeof (*hdr), FUNC2()));
	hdr = ztest_shared_hdr = (void *)FUNC3(0, FUNC1(size, FUNC2()),
	    PROT_READ | PROT_WRITE, MAP_SHARED, ztest_fd_data, 0);
	FUNC0(hdr != MAP_FAILED);
	buf = (uint8_t *)hdr;

	offset = hdr->zh_hdr_size;
	ztest_shared_opts = (void *)&buf[offset];
	offset += hdr->zh_opts_size;
	ztest_shared = (void *)&buf[offset];
	offset += hdr->zh_size;
	ztest_shared_callstate = (void *)&buf[offset];
	offset += hdr->zh_stats_size * hdr->zh_stats_count;
	ztest_shared_ds = (void *)&buf[offset];
}