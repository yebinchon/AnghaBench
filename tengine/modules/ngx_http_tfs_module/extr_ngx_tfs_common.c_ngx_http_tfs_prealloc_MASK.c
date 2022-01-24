#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_6__ {int /*<<< orphan*/ * last; int /*<<< orphan*/ * end; } ;
struct TYPE_7__ {TYPE_1__ d; } ;
typedef  TYPE_2__ ngx_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,void*,size_t) ; 
 void* FUNC1 (TYPE_2__*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,void*) ; 

void *
FUNC3(ngx_pool_t *pool, void *p,
    size_t old_size, size_t new_size)
{
    void *new;

    if (p == NULL) {
        return FUNC1(pool, new_size);
    }

    if (new_size == 0) {
        if ((u_char *) p + old_size == pool->d.last) {
           pool->d.last = p;
        } else {
           FUNC2(pool, p);
        }

        return NULL;
    }

    if ((u_char *) p + old_size == pool->d.last
        && (u_char *) p + new_size <= pool->d.end)
    {
        pool->d.last = (u_char *) p + new_size;
        return p;
    }

    new = FUNC1(pool, new_size);
    if (new == NULL) {
        return NULL;
    }

    FUNC0(new, p, old_size);

    FUNC2(pool, p);

    return new;
}