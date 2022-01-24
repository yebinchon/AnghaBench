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
struct buffy {struct buffy* next; } ;
struct bufferchain {scalar_t__ pool_fill; scalar_t__ pool_size; struct buffy* pool; int /*<<< orphan*/  bufblock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffy*) ; 
 struct buffy* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct bufferchain *bc)
{
	/* Remove superfluous ones. */
	while(bc->pool_fill > bc->pool_size)
	{
		/* Lazyness: Just work on the front. */
		struct buffy* buf = bc->pool;
		bc->pool = buf->next;
		FUNC0(buf);
		--bc->pool_fill;
	}

	/* Add missing ones. */
	while(bc->pool_fill < bc->pool_size)
	{
		/* Again, just work on the front. */
		struct buffy* buf;
		buf = FUNC1(0, bc->bufblock); /* Use default block size. */
		if(!buf) return -1;

		buf->next = bc->pool;
		bc->pool = buf;
		++bc->pool_fill;
	}

	return 0;
}