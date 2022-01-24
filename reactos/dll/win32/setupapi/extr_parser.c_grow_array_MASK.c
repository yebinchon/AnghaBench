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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,unsigned int) ; 

__attribute__((used)) static void *FUNC4( void *array, unsigned int *count, size_t elem )
{
    void *new_array;
    unsigned int new_count = *count + *count / 2;
    if (new_count < 32) new_count = 32;

    if (array)
	new_array = FUNC3( FUNC0(), HEAP_ZERO_MEMORY, array, new_count * elem );
    else
	new_array = FUNC1( FUNC0(), HEAP_ZERO_MEMORY, new_count * elem );

    if (new_array)
        *count = new_count;
    else
        FUNC2( FUNC0(), 0, array );
    return new_array;
}