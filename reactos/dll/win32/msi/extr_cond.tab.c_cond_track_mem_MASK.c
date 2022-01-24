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
typedef  int /*<<< orphan*/  COND_input ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (void*,void*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 

__attribute__((used)) static void *FUNC3( COND_input *cond, void *ptr, unsigned int sz )
{
    void *new_ptr;

    if( !ptr )
        return ptr;

    new_ptr = FUNC0( cond, sz );
    if( !new_ptr )
    {
        FUNC2( ptr );
        return NULL;
    }

    FUNC1( new_ptr, ptr, sz );
    FUNC2( ptr );
    return new_ptr;
}