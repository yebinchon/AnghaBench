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
typedef  int /*<<< orphan*/  len ;

/* Variables and functions */
 unsigned int ZIPMAP_BIGLEN ; 
 unsigned int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,unsigned int*,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*) ; 

__attribute__((used)) static unsigned int FUNC3(unsigned char *p, unsigned int len) {
    if (p == NULL) {
        return FUNC0(len);
    } else {
        if (len < ZIPMAP_BIGLEN) {
            p[0] = len;
            return 1;
        } else {
            p[0] = ZIPMAP_BIGLEN;
            FUNC1(p+1,&len,sizeof(len));
            FUNC2(p+1);
            return 1+sizeof(len);
        }
    }
}