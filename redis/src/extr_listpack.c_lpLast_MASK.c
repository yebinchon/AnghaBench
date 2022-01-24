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
 int FUNC0 (unsigned char*) ; 
 unsigned char* FUNC1 (unsigned char*,unsigned char*) ; 

unsigned char *FUNC2(unsigned char *lp) {
    unsigned char *p = lp+FUNC0(lp)-1; /* Seek EOF element. */
    return FUNC1(lp,p); /* Will return NULL if EOF is the only element. */
}