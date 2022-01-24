#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {unsigned char* buf; size_t size; } ;
typedef  TYPE_1__ Extent ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void
FUNC4(Extent *x, void *buf, size_t count)
{
    unsigned char *p=x->buf, *q=buf;
    size_t j;
    FUNC0((FUNC1(), x, x->size, x->buf, buf, count));
    if (x->size < count) {
        FUNC0((FUNC2(), x, x->size, x->buf, buf, count));
        FUNC3(127);
    }
    for (j = count; 0!=j--; ++p, ++q) {
        *q = *p;
    }
    x->buf  += count;
    x->size -= count;
}