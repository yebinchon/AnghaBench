#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint8 ;
typedef  size_t uint16 ;
struct TYPE_6__ {size_t* bmpcache_mru; int* bmpcache_lru; TYPE_1__** bmpcache; int /*<<< orphan*/ * bmpcache_count; } ;
struct TYPE_7__ {TYPE_2__ cache; } ;
struct TYPE_5__ {int next; int previous; } ;
typedef  TYPE_3__ RDPCLIENT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 scalar_t__ FUNC2 (int) ; 
 int NOT_SET ; 

void
FUNC3(RDPCLIENT * This, uint8 id, uint16 idx, int bump)
{
	int p_idx, n_idx, n;

	if (!FUNC1(id))
		return;

	if (This->cache.bmpcache_mru[id] == idx)
		return;

	FUNC0(("bump bitmap: id=%d, idx=%d, bump=%d\n", id, idx, bump));

	n_idx = This->cache.bmpcache[id][idx].next;
	p_idx = This->cache.bmpcache[id][idx].previous;

	if (FUNC2(n_idx))
	{
		/* remove */
		--This->cache.bmpcache_count[id];
		if (FUNC2(p_idx))
			This->cache.bmpcache[id][p_idx].next = n_idx;
		else
			This->cache.bmpcache_lru[id] = n_idx;
		if (FUNC2(n_idx))
			This->cache.bmpcache[id][n_idx].previous = p_idx;
		else
			This->cache.bmpcache_mru[id] = p_idx;
	}
	else
	{
		p_idx = NOT_SET;
		n_idx = This->cache.bmpcache_lru[id];
	}

	if (bump >= 0)
	{
		for (n = 0; n < bump && FUNC2(n_idx); n++)
		{
			p_idx = n_idx;
			n_idx = This->cache.bmpcache[id][p_idx].next;
		}
	}
	else
	{
		p_idx = This->cache.bmpcache_mru[id];
		n_idx = NOT_SET;
	}

	/* insert */
	++This->cache.bmpcache_count[id];
	This->cache.bmpcache[id][idx].previous = p_idx;
	This->cache.bmpcache[id][idx].next = n_idx;

	if (p_idx >= 0)
		This->cache.bmpcache[id][p_idx].next = idx;
	else
		This->cache.bmpcache_lru[id] = idx;

	if (n_idx >= 0)
		This->cache.bmpcache[id][n_idx].previous = idx;
	else
		This->cache.bmpcache_mru[id] = idx;
}