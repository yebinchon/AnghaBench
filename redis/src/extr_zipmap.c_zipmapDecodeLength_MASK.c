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
 unsigned int ZIPMAP_BIGLEN ; 
 int /*<<< orphan*/  FUNC0 (unsigned int*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int*) ; 

__attribute__((used)) static unsigned int FUNC2(unsigned char *p) {
    unsigned int len = *p;

    if (len < ZIPMAP_BIGLEN) return len;
    FUNC0(&len,p+1,sizeof(unsigned int));
    FUNC1(&len);
    return len;
}