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
struct stack {size_t asize; void** item; size_t size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void**,int,size_t) ; 
 void** FUNC1 (void**,size_t) ; 

int
FUNC2(struct stack *st, size_t new_size)
{
	void **new_st;

	if (st->asize >= new_size)
		return 0;

	new_st = FUNC1(st->item, new_size * sizeof(void *));
	if (new_st == NULL)
		return -1;

	FUNC0(new_st + st->asize, 0x0,
		(new_size - st->asize) * sizeof(void *));

	st->item = new_st;
	st->asize = new_size;

	if (st->size > new_size)
		st->size = new_size;

	return 0;
}