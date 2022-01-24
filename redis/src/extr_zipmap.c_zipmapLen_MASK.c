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
 unsigned char ZIPMAP_BIGLEN ; 
 unsigned char* FUNC0 (unsigned char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 unsigned char* FUNC1 (unsigned char*) ; 

unsigned int FUNC2(unsigned char *zm) {
    unsigned int len = 0;
    if (zm[0] < ZIPMAP_BIGLEN) {
        len = zm[0];
    } else {
        unsigned char *p = FUNC1(zm);
        while((p = FUNC0(p,NULL,NULL,NULL,NULL)) != NULL) len++;

        /* Re-store length if small enough */
        if (len < ZIPMAP_BIGLEN) zm[0] = len;
    }
    return len;
}