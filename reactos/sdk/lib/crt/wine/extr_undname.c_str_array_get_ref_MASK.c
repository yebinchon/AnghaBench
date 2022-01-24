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
struct array {unsigned int start; unsigned int max; char** elts; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct array*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct array*,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct array*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static char* FUNC4(struct array* cref, unsigned idx)
{
    FUNC2(cref);
    if (cref->start + idx >= cref->max)
    {
        FUNC1("Out of bounds: %p %d + %d >= %d\n", 
              cref, cref->start, idx, cref->max);
        return NULL;
    }
    FUNC0("Returning %p[%d] => %s\n", 
          cref, idx, FUNC3(cref->elts[cref->start + idx]));
    return cref->elts[cref->start + idx];
}