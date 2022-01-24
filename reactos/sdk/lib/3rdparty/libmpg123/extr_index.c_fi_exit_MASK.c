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
struct frame_index {int /*<<< orphan*/ * data; scalar_t__ size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,void*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct frame_index*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct frame_index *fi)
{
	FUNC0("fi_exit: %p and %lu", (void*)fi->data, (unsigned long)fi->size);
	if(fi->size && fi->data != NULL) FUNC2(fi->data);

	FUNC1(fi); /* Be prepared for further fun, still. */
}