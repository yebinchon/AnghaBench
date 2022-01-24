#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint8 ;
typedef  int /*<<< orphan*/  uint32 ;
typedef  int uint16 ;
typedef  int /*<<< orphan*/  stamp ;
struct TYPE_3__ {int* pstcache_fd; int pstcache_Bpp; } ;
typedef  TYPE_1__ RDPCLIENT ;
typedef  int /*<<< orphan*/  CELLHEADER ;

/* Variables and functions */
 int BMPCACHE2_NUM_PSTCELLS ; 
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int MAX_CELL_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *,int) ; 

void
FUNC3(RDPCLIENT * This, uint8 cache_id, uint16 cache_idx, uint32 stamp)
{
	int fd;

	if (!FUNC0(cache_id) || cache_idx >= BMPCACHE2_NUM_PSTCELLS)
		return;

	fd = This->pstcache_fd[cache_id];
	FUNC1(fd, 12 + cache_idx * (This->pstcache_Bpp * MAX_CELL_SIZE + sizeof(CELLHEADER)));
	FUNC2(fd, &stamp, sizeof(stamp));
}