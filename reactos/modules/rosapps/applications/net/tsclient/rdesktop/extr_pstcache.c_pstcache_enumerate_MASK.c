#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint8 ;
typedef  scalar_t__ uint32 ;
typedef  int uint16 ;
typedef  int sint16 ;
struct TYPE_8__ {scalar_t__ stamp; int /*<<< orphan*/  key; } ;
struct TYPE_7__ {int* pstcache_fd; int pstcache_Bpp; int server_depth; scalar_t__ pstcache_enumerated; scalar_t__ bitmap_cache_precache; scalar_t__ bitmap_cache_persist_enable; scalar_t__ bitmap_cache; } ;
typedef  TYPE_1__ RDPCLIENT ;
typedef  int /*<<< orphan*/  HASH_KEY ;
typedef  TYPE_2__ CELLHEADER ;

/* Variables and functions */
 int BMPCACHE2_NUM_PSTCELLS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (size_t) ; 
 int MAX_CELL_SIZE ; 
 scalar_t__ True ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,size_t,int*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,size_t,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 scalar_t__ FUNC7 (int,TYPE_2__*,int) ; 
 int /*<<< orphan*/  zero_key ; 

int
FUNC8(RDPCLIENT * This, uint8 id, HASH_KEY * keylist)
{
	int fd, n;
	uint16 idx;
	sint16 mru_idx[0xa00];
	uint32 mru_stamp[0xa00];
	CELLHEADER cellhdr;

	if (!(This->bitmap_cache && This->bitmap_cache_persist_enable && FUNC1(id)))
		return 0;

	/* The server disconnects if the bitmap cache content is sent more than once */
	if (This->pstcache_enumerated)
		return 0;

	FUNC0(("Persistent bitmap cache enumeration... "));
	for (idx = 0; idx < BMPCACHE2_NUM_PSTCELLS; idx++)
	{
		fd = This->pstcache_fd[id];
		FUNC6(fd, idx * (This->pstcache_Bpp * MAX_CELL_SIZE + sizeof(CELLHEADER)));
		if (FUNC7(fd, &cellhdr, sizeof(CELLHEADER)) <= 0)
			break;

		if (FUNC3(cellhdr.key, zero_key, sizeof(HASH_KEY)) != 0)
		{
			FUNC4(keylist[idx], cellhdr.key, sizeof(HASH_KEY));

			/* Pre-cache (not possible for 8 bit colour depth cause it needs a colourmap) */
			if (This->bitmap_cache_precache && cellhdr.stamp && This->server_depth > 8)
				FUNC5(This, id, idx);

			/* Sort by stamp */
			for (n = idx; n > 0 && cellhdr.stamp < mru_stamp[n - 1]; n--)
			{
				mru_idx[n] = mru_idx[n - 1];
				mru_stamp[n] = mru_stamp[n - 1];
			}

			mru_idx[n] = idx;
			mru_stamp[n] = cellhdr.stamp;
		}
		else
		{
			break;
		}
	}

	FUNC0(("%d cached bitmaps.\n", idx));

	FUNC2(This, id, mru_idx, idx);
	This->pstcache_enumerated = True;
	return idx;
}