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
typedef  int /*<<< orphan*/  VOID ;
typedef  int /*<<< orphan*/  PVOID ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

VOID FUNC2(
    PVOID Buffer)
/*
 * FUNCTION: Returns a buffer to the free buffer pool
 * ARGUMENTS:
 *     Buffer = Buffer to return to free buffer pool
 */
{
    /* FIXME: Put buffer in free buffer pool */

    FUNC0(DEBUG_MEMORY, ("Freeing buffer at (0x%X).\n", Buffer));

    FUNC1(Buffer);
}