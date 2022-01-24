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
typedef  size_t uint32_t ;
struct array {size_t size; size_t nalloc; scalar_t__ nelem; int /*<<< orphan*/ * elem; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct array*) ; 

struct array *
FUNC3(uint32_t n, size_t size)
{
    struct array *a;

    FUNC0(n != 0 && size != 0);

    a = FUNC1(sizeof(*a));
    if (a == NULL) {
        return NULL;
    }

    a->elem = FUNC1(n * size);
    if (a->elem == NULL) {
        FUNC2(a);
        return NULL;
    }

    a->nelem = 0;
    a->size = size;
    a->nalloc = n;

    return a;
}