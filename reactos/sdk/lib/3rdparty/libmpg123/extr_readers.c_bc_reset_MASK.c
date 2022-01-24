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
struct bufferchain {struct buffy* first; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bufferchain*) ; 
 int /*<<< orphan*/  FUNC1 (struct bufferchain*,struct buffy*) ; 
 int /*<<< orphan*/  FUNC2 (struct bufferchain*) ; 

__attribute__((used)) static void FUNC3(struct bufferchain *bc)
{
	/* Free current chain, possibly stuffing back into the pool. */
	while(bc->first)
	{
		struct buffy* buf = bc->first;
		bc->first = buf->next;
		FUNC1(bc, buf);
	}
	FUNC0(bc); /* Ignoring an error here... */
	FUNC2(bc);
}