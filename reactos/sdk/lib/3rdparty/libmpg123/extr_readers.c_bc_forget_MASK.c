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
struct buffy {scalar_t__ size; scalar_t__ data; struct buffy* next; } ;
struct bufferchain {scalar_t__ pos; scalar_t__ fileoff; scalar_t__ size; scalar_t__ firstpos; struct buffy* first; int /*<<< orphan*/ * last; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bufferchain*,struct buffy*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (char*,void*,long,long,long,long) ; 

__attribute__((used)) static void FUNC4(struct bufferchain *bc)
{
	struct buffy *b = bc->first;
	/* free all buffers that are def'n'tly outdated */
	/* we have buffers until filepos... delete all buffers fully below it */
	if(b) FUNC2("bc_forget: block %lu pos %lu", (unsigned long)b->size, (unsigned long)bc->pos);
	else FUNC1("forget with nothing there!");

	while(b != NULL && bc->pos >= b->size)
	{
		struct buffy *n = b->next; /* != NULL or this is indeed the end and the last cycle anyway */
		if(n == NULL) bc->last = NULL; /* Going to delete the last buffy... */
		bc->fileoff += b->size;
		bc->pos  -= b->size;
		bc->size -= b->size;

		FUNC3("bc_forget: forgot %p with %lu, pos=%li, size=%li, fileoff=%li", (void*)b->data, (long)b->size, (long)bc->pos,  (long)bc->size, (long)bc->fileoff);

		FUNC0(bc, b);
		b = n;
	}
	bc->first = b;
	bc->firstpos = bc->pos;
}