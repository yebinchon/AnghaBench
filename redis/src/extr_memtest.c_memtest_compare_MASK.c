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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,unsigned long,char) ; 
 int /*<<< orphan*/  FUNC3 (char*,void*,void*,unsigned long,unsigned long) ; 

int FUNC4(unsigned long *l, size_t bytes, int interactive) {
    unsigned long words = bytes/sizeof(unsigned long)/2;
    unsigned long w, *l1, *l2;

    FUNC0((bytes & 4095) == 0);
    l1 = l;
    l2 = l1+words;
    for (w = 0; w < words; w++) {
        if (*l1 != *l2) {
            if (interactive) {
                FUNC3("\n*** MEMORY ERROR DETECTED: %p != %p (%lu vs %lu)\n",
                    (void*)l1, (void*)l2, *l1, *l2);
                FUNC1(1);
            }
            return 1;
        }
        l1 ++;
        l2 ++;
        if ((w & 0xffff) == 0 && interactive)
            FUNC2(w,words,'=');
    }
    return 0;
}