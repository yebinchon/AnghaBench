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
struct Extent {char* buf; size_t size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 

__attribute__((used)) static void
#if (ACC_CC_GNUC >= 0x030300)
__attribute__((__noinline__, __used__, regparm(3), stdcall))
#endif
FUNC1(struct Extent *x, char *buf, size_t count)
{
    char *p=x->buf, *q=buf;
    size_t j;
    if (x->size < count) {
        FUNC0(127);
    }
    for (j = count; 0!=j--; ++p, ++q) {
        *q = *p;
    }
    x->buf  += count;
    x->size -= count;
}