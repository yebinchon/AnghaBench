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
struct dictionary {scalar_t__ num_entries; int /*<<< orphan*/ * head; void* extra; int /*<<< orphan*/  destroy; scalar_t__ comp; } ;
typedef  int /*<<< orphan*/  destroyfunc ;
typedef  scalar_t__ comparefunc ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 struct dictionary* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct dictionary*,...) ; 

struct dictionary *FUNC3(comparefunc c, destroyfunc d, void *extra)
{
    struct dictionary *ret;

    FUNC2("(%p, %p, %p)\n", c, d, extra);
    if (!c)
        return NULL;
    ret = FUNC1(FUNC0(), 0, sizeof(struct dictionary));
    if (ret)
    {
        ret->comp = c;
        ret->destroy = d;
        ret->extra = extra;
        ret->head = NULL;
        ret->num_entries = 0;
    }
    FUNC2("returning %p\n", ret);
    return ret;
}