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
struct dll_redirect {int dummy; } ;
struct assembly {int allocated_dlls; int num_dlls; struct dll_redirect* dlls; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct assembly*,int) ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dll_redirect*,unsigned int) ; 

__attribute__((used)) static struct dll_redirect* FUNC4(struct assembly* assembly)
{
    FUNC0("add_dll_redirect() to assembly %p, num_dlls %d\n", assembly, assembly->allocated_dlls);

    if (assembly->num_dlls == assembly->allocated_dlls)
    {
        void *ptr;
        unsigned int new_count;
        if (assembly->dlls)
        {
            new_count = assembly->allocated_dlls * 2;
            ptr = FUNC3( FUNC2(), HEAP_ZERO_MEMORY,
                                     assembly->dlls, new_count * sizeof(*assembly->dlls) );
        }
        else
        {
            new_count = 4;
            ptr = FUNC1( FUNC2(), HEAP_ZERO_MEMORY, new_count * sizeof(*assembly->dlls) );
        }
        if (!ptr) return NULL;
        assembly->dlls = ptr;
        assembly->allocated_dlls = new_count;
    }
    return &assembly->dlls[assembly->num_dlls++];
}