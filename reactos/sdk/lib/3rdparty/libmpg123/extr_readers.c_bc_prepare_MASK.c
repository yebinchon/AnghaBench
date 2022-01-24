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
struct bufferchain {scalar_t__ pool_fill; int /*<<< orphan*/ * pool; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bufferchain*) ; 
 int /*<<< orphan*/  FUNC1 (struct bufferchain*,size_t,size_t) ; 

void FUNC2(struct bufferchain *bc, size_t pool_size, size_t bufblock)
{
	FUNC1(bc, pool_size, bufblock);
	bc->pool = NULL;
	bc->pool_fill = 0;
	FUNC0(bc); /* Ensure that members are zeroed for read-only use. */
}