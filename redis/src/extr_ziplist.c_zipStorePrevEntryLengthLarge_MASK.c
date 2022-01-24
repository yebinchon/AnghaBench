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
 unsigned char ZIP_BIG_PREVLEN ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,unsigned int*,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*) ; 

int FUNC2(unsigned char *p, unsigned int len) {
    if (p != NULL) {
        p[0] = ZIP_BIG_PREVLEN;
        FUNC0(p+1,&len,sizeof(len));
        FUNC1(p+1);
    }
    return 1+sizeof(len);
}