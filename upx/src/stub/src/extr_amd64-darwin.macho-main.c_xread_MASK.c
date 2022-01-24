#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {unsigned char* buf; size_t size; } ;
typedef  TYPE_1__ Extent ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,TYPE_1__*,size_t,unsigned char*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void
FUNC2(Extent *x, void *buf, size_t count)
{
    unsigned char *p=x->buf, *q=buf;
    size_t j;
    FUNC0("xread %%p(%%x %%p) %%p %%x\\n", x, x->size, x->buf, buf, count);
    if (x->size < count) {
        FUNC0("xreadfail %%p(%%x %%p) %%p %%x\\n",
            x, x->size, x->buf, buf, count);
        FUNC1(127);
    }
    for (j = count; 0!=j--; ++p, ++q) {
        *q = *p;
    }
    x->buf  += count;
    x->size -= count;
}