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
 int FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (unsigned char*) ; 
 unsigned char* FUNC2 (unsigned char*,unsigned char*,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*) ; 

int FUNC4(unsigned char *zm, unsigned char *key, unsigned int klen, unsigned char **value, unsigned int *vlen) {
    unsigned char *p;

    if ((p = FUNC2(zm,key,klen,NULL)) == NULL) return 0;
    p += FUNC3(p);
    *vlen = FUNC1(p);
    *value = p + FUNC0(*vlen) + 1;
    return 1;
}