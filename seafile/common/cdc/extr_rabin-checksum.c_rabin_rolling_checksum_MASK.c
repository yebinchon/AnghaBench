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
 unsigned int* U ; 
 unsigned int FUNC0 (unsigned int,char) ; 

unsigned int FUNC1(unsigned int csum, int len,
                                    char c1, char c2)
{
    return FUNC0(csum ^ U[(unsigned char)c1], c2);
}