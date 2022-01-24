#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32 ;
struct TYPE_8__ {int next; } ;
struct TYPE_6__ {int* bmpcache_lru; TYPE_5__** bmpcache; } ;
struct TYPE_7__ {TYPE_1__ cache; } ;
typedef  TYPE_2__ RDPCLIENT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (size_t) ; 
 size_t FUNC2 (TYPE_5__**) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,size_t,int,size_t) ; 

void
FUNC4(RDPCLIENT * This)
{
	uint32 id = 0, t = 0;
	int idx;

	for (id = 0; id < FUNC2(This->cache.bmpcache); id++)
		if (FUNC1(id))
		{
			FUNC0(("Saving cache state for bitmap cache %d...", id));
			idx = This->cache.bmpcache_lru[id];
			while (idx >= 0)
			{
				FUNC3(This, id, idx, ++t);
				idx = This->cache.bmpcache[id][idx].next;
			}
			FUNC0((" %d stamps written.\n", t));
		}
}