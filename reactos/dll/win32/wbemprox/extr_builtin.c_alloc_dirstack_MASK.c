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
struct dirstack {int num_allocated; scalar_t__ num_dirs; struct dirstack* dirs; void* len_dirs; } ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int UINT ;

/* Variables and functions */
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct dirstack*) ; 

__attribute__((used)) static struct dirstack *FUNC2( UINT size )
{
    struct dirstack *dirstack;

    if (!(dirstack = FUNC0( sizeof(*dirstack) ))) return NULL;
    if (!(dirstack->dirs = FUNC0( sizeof(WCHAR *) * size )))
    {
        FUNC1( dirstack );
        return NULL;
    }
    if (!(dirstack->len_dirs = FUNC0( sizeof(UINT) * size )))
    {
        FUNC1( dirstack->dirs );
        FUNC1( dirstack );
        return NULL;
    }
    dirstack->num_dirs = 0;
    dirstack->num_allocated = size;
    return dirstack;
}