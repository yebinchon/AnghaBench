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
typedef  scalar_t__ uint64_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,unsigned long,char) ; 
 int /*<<< orphan*/  FUNC3 () ; 

void FUNC4(unsigned long *l, size_t bytes, int interactive) {
    unsigned long step = 4096/sizeof(unsigned long);
    unsigned long words = bytes/sizeof(unsigned long)/2;
    unsigned long iwords = words/step;  /* words per iteration */
    unsigned long off, w, *l1, *l2;
    uint64_t rseed = FUNC0(0xd13133de9afdb566); /* Just a random seed. */
    uint64_t rout = 0;

    FUNC1((bytes & 4095) == 0);
    for (off = 0; off < step; off++) {
        l1 = l+off;
        l2 = l1+words;
        for (w = 0; w < iwords; w++) {
            FUNC3();
            *l1 = *l2 = (unsigned long) rout;
            l1 += step;
            l2 += step;
            if ((w & 0xffff) == 0 && interactive)
                FUNC2(w+iwords*off,words,'R');
        }
    }
}