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
 unsigned char ZIPMAP_END ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*) ; 

unsigned char *FUNC4(unsigned char *zm, unsigned char **key, unsigned int *klen, unsigned char **value, unsigned int *vlen) {
    if (zm[0] == ZIPMAP_END) return NULL;
    if (key) {
        *key = zm;
        *klen = FUNC1(zm);
        *key += FUNC0(*klen);
    }
    zm += FUNC2(zm);
    if (value) {
        *value = zm+1;
        *vlen = FUNC1(zm);
        *value += FUNC0(*vlen);
    }
    zm += FUNC3(zm);
    return zm;
}