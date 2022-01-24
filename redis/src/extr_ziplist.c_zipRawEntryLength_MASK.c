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
 int /*<<< orphan*/  FUNC0 (unsigned char*,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,unsigned int) ; 

unsigned int FUNC2(unsigned char *p) {
    unsigned int prevlensize, encoding, lensize, len;
    FUNC1(p, prevlensize);
    FUNC0(p + prevlensize, encoding, lensize, len);
    return prevlensize + lensize + len;
}