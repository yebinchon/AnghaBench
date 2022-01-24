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
 int ADV_SIZE ; 
 scalar_t__ FUNC0 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*) ; 

int FUNC3(unsigned char *advbuf)
{
    if (FUNC0(advbuf + 0 * ADV_SIZE)) {
	FUNC1(advbuf + ADV_SIZE, advbuf, ADV_SIZE);
	return 0;
    } else if (FUNC0(advbuf + 1 * ADV_SIZE)) {
	FUNC1(advbuf, advbuf + ADV_SIZE, ADV_SIZE);
	return 0;
    } else {
	FUNC2(advbuf);
	return -1;
    }
}