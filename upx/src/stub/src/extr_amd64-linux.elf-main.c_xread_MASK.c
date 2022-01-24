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
struct TYPE_3__ {size_t size; char* buf; } ;
typedef  TYPE_1__ Extent ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,size_t,...) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void
FUNC2(Extent *x, char *buf, size_t count)
{
    FUNC0("xread x.size=%%x  x.buf=%%p  buf=%%p  count=%%x\\n",
        x->size, x->buf, buf, count);
    char *p=x->buf, *q=buf;
    size_t j;
    if (x->size < count) {
        FUNC1(127);
    }
    for (j = count; 0!=j--; ++p, ++q) {
        *q = *p;
    }
    x->buf  += count;
    x->size -= count;
    FUNC0("xread done\\n",0);
}